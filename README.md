# Identifying protein domains in metagenomic data

![AwesomeLogo](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/figures/cddetector.png)

## We will be cite-able soon! Please check back for updates on the NCBI Virus Discovery codeathon paper submission.

## Rationale

Metagenomic data can be difficult to interpret. Which types of bacteria and viruses are present? Are specific sequences present that might be indicative of pathogenicity? One way to address these questions is to assess the **protein domain content** of a metagenome. Our tools allow users to perform a comprehensive annotation of domains within their metagenomic assembly (using 6-frame translation RPS-BLAST), allowing follow-up on specific occurrences of domains of interest. Additionally, we provide an alternative version of our pipeline that we began testing (but did not deploy on our full dataset) that uses MASH on translated reads to perform a more quick & rough scan of the domain content of their metagenomic data.

Potential uses of these results include:

* Filtering your metagenome to just the contigs that contain a particular virus of interest
* Summarizing the gene/protein content of your metagenome
* Estimating taxonomy from domains or mapping your metagenome's domains onto known taxonomy (for more details see the [Taxonomy Domain Integration repo](https://github.com/NCBI-Codeathons/Taxonomy_Domain_Integration))

## Schematic description

![Workflow](https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/figures/dataflowdiagram.png)

# How to use this pipeline

This pipeline takes the following as inputs: 

(1) **Query sequences**, which should be contigs of a metagenome assembly*,

and also 

(2) **Domain models**, which represent existing domain models - e.g., from CDD, PFAM, POGs/PVOGs, etc., in PSSM format. 

We provide tools for the user to perform **Domain search** using 6-frame translation of Reverse Position-Specific BLAST
([`RPS-BLAST`](https://www.ncbi.nlm.nih.gov/Structure/cdd/cdd_help.shtml#RPSBWhat)) (sometimes unofficially referred to as "RPS-tBLASTn"), or a non-optimized implementation of ([`Mash`](https://mash.readthedocs.io/en/latest/)).

\*There are several ways to generate a metagenomic assembly; we built the one for our use case with [SKESA](https://github.com/ncbi/SKESA).

**Output**

If using `RPS-BLAST`, a gff file will be generated containing the following information:

* Known domain IDs
* Contig locations
* Alignment scores

If using `Mash`, a file will be generated containing the following information:

* Domain ID
* Query sequence
* Estimated distance
* *P*-value
* Number of sketches in the query found in number of sketches for the domain.

# Initial use case

We used the following data to assess the runtime, scalability, and accuracy of this pipeline:

(1) **Query sequences** are from assembled contigs found in Codeathon1(link). For RPS-BLAST, we used the translated ORFs from all 3,000+ datasets, while for MASH, we only used a subset of 700 of them.

(2) **Domain models** are from CDD.

Parallelization is built into the pipeline in a hard-coded form. We initially parallelized across 64 nodes on 10 cloud instances.
