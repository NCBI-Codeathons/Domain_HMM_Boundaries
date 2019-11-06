# Identifying protein domains in metagenomic data

## We will be cite-able soon! Please check back for updates on the NCBI Virus Discovery codeathon paper submission.

## Rationale



## Schematic description

![Workflow](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.png)

![Download PDF file](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.pdf "Workflow")

# How to use this pipeline

This pipeline takes the following as inputs: 
(1) **Query sequences**, which should be translated ORFs from contigs of a metagenome assembly*, 
and also 
(2) **Domain models**, which represent existing domain models from CDD, PFAM, POGs/PVOGs, etc., in XXX format.

We provide tools for the user to perform **Domain search** is using Reverse Position-Specific BLAST
(`RPS-BLAST`) or `Mash`. 

**Output**

If using `RPS-BLAST`, a gff file will be generated containing the following information:

* Known domain IDs
* Contig locations
* Scores

If using `Mash`, a XXX file will be generated containing the following information:

* XXXX

# Initial use case

We used the following data to assess the runtime, scalability, and accuracy of this pipeline:
(1) **Query sequences** are from Codeathon1(link) (translated ORFs from 3,000+ datasets), 
(2) **Domain models** are from CDD.



