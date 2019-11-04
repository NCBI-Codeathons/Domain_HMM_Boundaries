# Task distribution for domain searching group

0. Put everything on the cloud instance.

   assigned to: Ward

1. Split up the reads/contigs/predicted proteins to parallelize.

   (this may not be necessary)

   assigned to: Eric

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

* 4c. Compare results from protein and DNA queries

5. Parse output to generate a gff for Group 2.
