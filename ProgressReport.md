# Progress report for domain searching group

**Day 2**
**Progress 11/5/19**

1. converting 950 completed runs to appropriate format for group 1 and index group (Migun, Eneida, Wynn, David)

**Completed!**

**We sent the following to the Indexing team: gs://virus-hunting-2-codeathon-viasq-team/Domain_HMM_Boundaries/cdd_data_forindex.tsv**

**This was generated using the following code:**

**`https://github.com/NCBI-Codeathons/Domain_HMM_Boundaries/blob/master/post_analysis/scripts/add_samp_column.py`**

**We may have sent something slightly different to the Taxonomy team**

2. basic analysis on output from initial pipeline (e.g., domains per contig, clusters of domain content) (Migun)

**Migun has generated some scripts to run basic analysis and deposited in the `post_analysis` directory on the repo.**
 
**Also in this directory is a Jupyter notebook, which allows a user to visualize some of the outputs.**

3. completing run on 3000 proteins from v1 using current pipeline (Ward)

4. creating a scalable solution to do a larger dataset for proteins (Tom and Ward)

5. creating a scalable solution to do a large dataset of raw data (non-assembled reads/contigs) using kmers (Anderson, Migun, David)

   -Migun has tried RPS-BLAST on contigs, and it takes too long to run.


**Day 1**
*Progress 11/4/19*

-- Useful for shared files: Cloud Storage buckets --
   [https://cloud.google.com/storage/docs/creating-buckets](https://cloud.google.com/storage/docs/creating-buckets)


0. Put everything on the cloud instance.

   assigned to: Ward

   *`rpstblastn` already installed on `instance-1`: `/opt/ncbi-blast-2.9.0+/bin/rpstblastn`*

   *2953 assembled contigs in `/home/ward.deboutte/assembled`*

-- Useful for the parallel tasks: GNU `parallel` --

1. Split up the reads/contigs/predicted proteins to parallelize.

   (this may not be necessary for now... required for a larger search)

   assigned to: Eric, David, Wynn, Eneida

2. Split up the protein domain database (e.g., CDD) to parallelize.

   (existing from codeathon v1)

   assigned to: Eric

   *broken up into a set of 81 different files using the following:
    https://github.com/NCBI-Hackathons/VirusDiscoveryProject/blob/master/DomainLabeling/RPSTBLN/generate_splitCDD.sh*

   *databases are in `/home/ward.deboutte/DB/profs`*

3. Convert protein domain database -> RPS-blast database

   (not necessary? Is this a one-liner? Document the tool!)

4. Search database for query sequences.

* 4a. Using protein queries

  **Where are these from v1?**

  assigned to: Migun

  *currently 1 of 2953 queries finished, and 65 running...*

* 4b. Using 6-frame translated reads as queries
      
  assigned to: Migun

5. Parse output to generate a gff for Group 2.

   assigned to: Tom, Eric, Eneida, ...

   *installed cnv_blast2gff on main repo*

* 5b. (moved from 4c) Compare results from protein and DNA queries

  assigned to: Anderson (working with Eneida)
