#! /usr/bin/env python

import pandas as pd
import glob
import os
import argparse


def cmdline_parser():
	"""
	Create an argparse instance.

	Combination of different options for this script.
	"""

	parser = argparse.ArgumentParser(
									 description="""convert rpsbtblastn""",
									 epilog="""
		""")

	required_args = parser.add_argument_group('required arguments')

	required_args.add_argument("-d", dest="dir", help="""directory with rpstblastn results,
	files that ends in .rpstbln""", required=True)

	return parser

def main():
	"""
   	 Main function.

	"""
	parser = cmdline_parser()
	args = parser.parse_args()


	tax_team_data(args.dir)
	index_team_data(args.dir)



def tax_team_data(folder):
	"""Generate data for taxa team."""
	data = []
	rps=os.path.join(folder, "*.rpstbln")
	globbed_files = glob.glob(rps)
	for csv in globbed_files:
		frame = pd.read_csv(csv,sep="\t", names=["contig_id", "CDD", "pident", "length", "mismatch", "gapopen", "qstart", "qend", "sstart", "send",
   "evalue", "bitscore"])
		frame['SRR'] = os.path.basename(csv).split(".")[0]
		data.append(frame)
	final_df = pd.concat(data)
	final_df = final_df.drop(columns=["pident", "length", "mismatch", "gapopen", "qstart", "qend", "sstart", "send",])
	final_df.to_csv("cdd_data_fortaxa.tsv", sep="\t")
	return final_df

def index_team_data(folder):
	"""Generate data for taxa team."""
	data = []
	rps=os.path.join(folder, "*.rpstbln")
	globbed_files = glob.glob(rps)
	for csv in globbed_files:
		frame = pd.read_csv(csv,sep="\t", names=["contig_id", "CDD", "pident", "length", "mismatch", "gapopen", "qstart", "qend", "sstart", "send",
   "evalue", "bitscore"])
		frame['SRR'] = os.path.basename(csv).split(".")[0]
		data.append(frame)
	final_df = pd.concat(data)
	final_df.to_csv("cdd_data_forindex.tsv", sep="\t")
	return final_df

if __name__ == '__main__':
	main()


