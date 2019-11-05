#!/usr/bin/python

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Created by: Anderson Brito
# Email: andersonfbrito@gmail.com
# Python version: Python 3
#
#   tReads.py -> This code translates DNA sequences in all 6 possible
#                frames, and outputs peptides tagged with unique
#                IDs, DNA strand sense, and frame number.
#
#   Usage: tReads.py fastaFile
#
# Release date: 05/11/2019
# Last update: 05/11/2019
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

from Bio import SeqIO
import sys

inFile = sys.argv[1]

count = 1
fasta_sequences = SeqIO.parse(open(inFile),'fasta')
outFile = open(inFile.split(".")[0] + '_peptides.fasta', 'w')

for fasta in fasta_sequences: # iterate over all fasta sequences
    id, seq = fasta.description, fasta.seq
    for strand, nuc in [('forward', seq), ('reverse', seq.reverse_complement())]: # forward and reverse DNA strands
        for frame in range(3):
            length = 3 * ((len(seq) - frame) // 3)  # define the length of the peptides from distinct frames
            peptide = nuc[frame:frame + length].translate(table='Standard') # translate the frame into amino acids
            entry = '>' + id + '_p' + '0' * (8 - len(str(count))) + str(count) + '.' + strand + '.frame'\
                    + str(frame + 1) + '\n' + str(peptide) + "\n"
            outFile.write(entry)
            count += 1 # assign an unique number for each frame translation

print('\nTranslated sequences saved in the working directory.\n')
outFile.close()
