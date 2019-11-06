# Task distribution for domain searching group

**Day 3**

1. Compare results of RPS-tblastn with those of Mash using different k-mer lengths (Ward)

2. Basic analysis on full output from all ~3000 metagenomes, with or without e-value filtering (Migun)

3. Estimate runtime for HMMer analysis with raw reads to demonstrate potential for scaling or lack thereof (Anderson)

4. Investigate potential use cases with output of domain identification/annotation (Eneida)

5. Run RPS-tblastn with top 5% of contigs by coverage to estimate runtime/scalability and comparability with full dataset (Wynn)

6. Revise github repo README and documentation for end users (Anderson and Wynn)

7. Draft text for paper submission based on repo documentation (Wynn)

**Day 2**

1. converting 950 completed runs to appropriate format for group 1 and index group (Migun, Eneida, Wynn, David)

2. basic analysis on output from initial pipeline (e.g., domains per contig, clusters of domain content) (Migun)

3. completing run on 3000 proteins from v1 using current pipeline (Ward)

4. creating a scalable solution to do a larger dataset for proteins (Tom and Ward)

5. creating a scalable solution to do a large dataset of raw data (non-assembled reads/contigs) using kmers (Anderson, Migun, David)

   -Migun has tried RPS-BLAST on contigs, and it takes too long to run.


**Day 1**

0. Put everything on the cloud instance.

   assigned to: Ward

-- Useful for the parallel tasks: GNU `parallel` --

1. Split up the reads/contigs/predicted proteins to parallelize.

   (this may not be necessary)

   assigned to: Eric, David, Wynn, Eneida

2. Split up the protein domain database (e.g., CDD) to parallelize.

   (existing from codeathon v1)

   assigned to: Eric

3. Convert protein domain database -> RPS-blast database

   (not necessary? Is this a one-liner? Document the tool!)

4. Search database for query sequences.

* 4a. Using protein queries

      **Where are these from v1?**

      assigned to: Migun

* 4b. Using 6-frame translated reads as queries
      
      assigned to: Migun

5. Parse output to generate a gff for Group 2.

   assigned to: Tom, Eric, Eneida, ...

* 5b. (moved from 4c) Compare results from protein and DNA queries

      assigned to: Anderson (working with Eneida)
