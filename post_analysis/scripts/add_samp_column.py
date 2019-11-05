#! /usr/bin/env python

import pandas as pd
import glob
import os



def main():
	x = add_col("tests/data/")
	x.to_csv("data.tsv", sep="\t")
	index_team_data("tests/data/")


def add_col(folder):
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
	return final_df

def index_team_data(folder):
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


