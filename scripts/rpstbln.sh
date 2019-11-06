#/bin/bash

# Virus cdd models provided by rodney (sitting in this repo under viral-cdd-models, put randomly in chunks by Erik).
# Actual smp's pulled from cdd.tar.gz (wget ftp://ftp.ncbi.nih.gov/pub/mmdb/cdd/cdd.tar.gz)
# The link between pssm id & actual CDD accession is provided in virus_models.txt
# Batchnames contains 1 textfile per line containing the list of CDD to be included in 1 batch.
# Threshold 13 is added to speed up the search (probably with the loss of some sensitivity.

while read line;do makeprofiledb -in $line -dbtype rps -threshold 13;done < batchnames.txt

#Afterwards, submit 1 contig set at a time against the 60 different batches:

rpstblastn -db ~/virCDD/realvirCDD/batch.1.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.1.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.2.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.2.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.3.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.3.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.4.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.4.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.5.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.5.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.6.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.6.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.7.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.7.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.8.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.8.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.9.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.9.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.10.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.10.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.11.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.11.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.12.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.12.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.13.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.13.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.14.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.14.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.15.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.15.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.16.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.16.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.17.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.17.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.18.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.18.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.19.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.19.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.20.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.20.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.21.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.21.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.22.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.22.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.23.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.23.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.24.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.24.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.25.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.25.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.26.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.26.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.27.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.27.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.28.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.28.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.29.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.29.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.30.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.30.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.31.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.31.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.32.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.32.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.33.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.33.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.34.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.34.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.35.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.35.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.36.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.36.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.37.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.37.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.38.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.38.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.39.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.39.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.40.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.40.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.41.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.41.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.42.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.42.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.43.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.43.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.44.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.44.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.45.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.45.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.46.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.46.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.47.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.47.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.48.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.48.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.49.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.49.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.50.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.50.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.51.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.51.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.52.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.52.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.53.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.53.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.54.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.54.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.55.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.55.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.56.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.56.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.57.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.57.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.58.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.58.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.59.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.59.rpstbln -outfmt 6 &
rpstblastn -db ~/virCDD/realvirCDD/batch.60.txt -query $1.realign.local.fa -evalue 1e-3 -out $1.60.rpstbln -outfmt 6 &
wait


#Finally cat together the outputs:
cat $1.*.rpstbln > $1.rpstbln

#And filter (optionally) on bitscore & al length:
cat $1.rpstbln | awk '$11 < 1e-10 && $4 > 50' > $1.filtered.rpstbln
