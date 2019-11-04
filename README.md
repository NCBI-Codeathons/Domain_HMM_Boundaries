# Searching protein domains in metagenomic data

## Rationale

This pipeline takes as inputs (1) **Query sequences** from Codeathon1 (translated ORFs from 3,000+ datasets), and also (2) **Domain models**, which represent existing domain models from CDD, PFAM, POGs/PVOGs, etc.

Next, **Domain search** is performed using Reverse Position-Specific BLAST
(`RPS-BLAST`) or `HMMER`. As **Output**, a tab-delimited file will be generated containing the following information:

* Known domain IDs
* Contig locations
* Scores

## Schematic description

![Workflow](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.png)

![Download PDF file](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.pdf "Workflow")
