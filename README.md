# Searching protein domains in metagenomics data

## Rationale

This pipeline takes as inputs **Query sequences** from Codeathon1 (translated ORFs from 3,000+ datasets), and also **Domain models**, which are existing domain models from CDD, PFAM, POGs/PVOGs, etc.

Next, **Domain search** will be performed using Reverse Position-Specific BLAST
(RPS-BLAST) or HMMER. As **Output**, a tab-delimited file will be generated containing the following information:

* Known domain IDs
* Contig locations
* Scores

## Graphic description

![PDF file](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.pdf "Workflow")

![alt text](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.jpeg "Workflow")

