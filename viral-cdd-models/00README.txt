EPN, Mon Nov  4 17:54:58 2019

<[(viral-cdd-models)]> wc -l virus_models.txt
2082 virus_models.txt

The 80 other files are random partitions of the virus_models.txt file:
<[(viral-cdd-models)]> wc -l virus_models.txt
2082 virus_models.txt
<[(viral-cdd-models)]> cat virus_models.*.list.txt | wc -l
2082
<[(viral-cdd-models)]> cat virus_models.*.list.txt | sort | uniq | wc -l
2082
<[(viral-cdd-models)]> sort virus_models.txt | sort | uniq | wc -l
2082

