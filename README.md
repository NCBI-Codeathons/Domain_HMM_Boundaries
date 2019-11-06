# Identifying protein domains in metagenomic data

## We will be cite-able soon! Please check back for updates on the NCBI Virus Discovery codeathon paper submission.

## Rationale

Metagenomic data can be difficult to interpret. Which types of bacteria and viruses are present? Are specific sequences present that might be indicative of pathogenicity? One way to address these questions is to assess the **domain content** of a metagenome. Our tools allow users to perform (1) a quick scan of the domain content of their metagenomic data, and/or (2) a comprehensive annotation of domains within their metagenomic assembly, allowing follow-up on specific occurrences of domains of interest.

Potential uses of these results include:

* Filtering your metagenome to just the contigs that contain a particular virus of interest
* Summarizing the gene/protein content of your metagenome
* Estimating taxonomy from domains or mapping your metagenome's domains onto known taxonomy (for more details see the ![Taxonomy Domain Integration repo](https://github.com/NCBI-Codeathons/Taxonomy_Domain_Integration))

## Schematic description

[Workflow](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.png)

[Download PDF file](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/workflow_codeathon.pdf "Workflow")

# How to use this pipeline

This pipeline takes the following as inputs: 

(1) **Query sequences**, which should be contigs of a metagenome assembly*,

and also 

(2) **Domain models**, which represent existing domain models from CDD, PFAM, POGs/PVOGs, etc., in PSSM (?) format.

We provide tools for the user to perform **Domain search** using Reverse Position-Specific BLAST
([`RPS-BLAST`](https://www.ncbi.nlm.nih.gov/Structure/cdd/cdd_help.shtml#RPSBWhat)) or `Mash` (**cite website and paper**). 

\*There are several ways to generate a metagenomic assembly; we built the one for our use case with [SKESA](https://github.com/ncbi/SKESA).

**Output**

If using `RPS-BLAST`, a gff file will be generated containing the following information:

* Known domain IDs
* Contig locations
* Scores

If using `Mash`, a XXX file will be generated containing the following information:

* Domain ID
* Query sequence
* Estimated distance
* *P*-value
* Number of sketches in the query found in number of sketches for the domain.

# Initial use case

We used the following data to assess the runtime, scalability, and accuracy of this pipeline:

(1) **Query sequences** are from Codeathon1(link) (translated ORFs from 3,000+ datasets), 

(2) **Domain models** are from CDD.



