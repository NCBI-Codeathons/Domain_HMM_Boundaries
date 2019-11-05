EPN, Mon Nov  4 17:54:58 2019

virus_models.txt lists the 2082 viral CDD models, one id per line
$ wc -l virus_models.txt
2082 virus_models.txt

The 60 other files named virus_models.<n>.list.txt 
for <n> = 1..60 are random partitions of the lines in the virus_models.txt file:

These commands show that all 2082 models exist in those 60 files and
there are no duplicates: 
$ wc -l virus_models.txt
2082 virus_models.txt
$ cat virus_models.*.list.txt | wc -l
2082
$ cat virus_models.*.list.txt | sort | uniq | wc -l
2082
$ sort virus_models.txt | uniq | wc -l
2082

