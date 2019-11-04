# Progress report for domain searching group

<span style="color:blue">Progress 11/4/19</span>

0. Put everything on the cloud instance.

   assigned to: Ward

   <span style="color:blue">2953 assembled contigs in `/home/ward.deboutte/assembled`</span>

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
