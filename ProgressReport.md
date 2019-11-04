# Progress report for domain searching group

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

   *databases are in `/home/ward.deboutte/DB/profs`

3. Convert protein domain database -> RPS-blast database

   (not necessary? Is this a one-liner? Document the tool!)

4. Search database for query sequences.

* 4a. Using protein queries

  **Where are these from v1?**

  assigned to: Migun

  *currently running...*

* 4b. Using 6-frame translated reads as queries
      
  assigned to: Migun

5. Parse output to generate a gff for Group 2.

   assigned to: Tom, Eric, Eneida, ...

   *installed cnv_blast2gff on main repo*

* 5b. (moved from 4c) Compare results from protein and DNA queries

  assigned to: Anderson (working with Eneida)
