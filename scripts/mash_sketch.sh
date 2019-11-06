#/bin/bash

# Download fasta files from CDD (to get actual protein sequences)
ftp://ftp.ncbi.nih.gov/pub/mmdb/cdd/fasta.tar.gz
# From the output retain only those fasta files that are represented in the virus_models list.
# Add the actual CDD name into the fasta header (makes it easy afterwards)
while read line;do sed 's/>/>$line./g' $line.FASTA > $line.name.fasta;done < cddlist.txt
# cat all the protein sequences together 
# Create mash sketch:
~/mash sketch -i -k 6 -w 1 cdd_names_vir.fasta 
# go from nucleotide fasta to protein fasta (Do this for as many contig files as needed).
~/prodigal -a $line.faa -i $line.contig.fna
# sketch the queries:
~/mash sketch -i -k 6 -w 1 $line.faa
# Calculate distances and write out:
 ~/mash dist -p 60 -v 0.5 ../virsubset/names/cdd_names_vir.fasta.msh $line.faa.msh > $line.sketch6
