#Task distribution for domain searching group

1. Split up the reads/predicted proteins to parallelize.

2. Split up the protein domain database (e.g., CDD) to parallelize.

3. Convert protein domain database -> RPS-blast database

4. Search database for query sequences.

5. Parse output to generate a gff for Group 2.
