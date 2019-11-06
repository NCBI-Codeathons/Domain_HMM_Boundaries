#Goal: Subset a metagenome assembly to include just the top 5% of contigs by coverage
#To be run in BigQuery
#Filter by length >= 1000 bp to eliminate poorly assembled/contaminant contigs

;WITH SlicedData AS
(
   SELECT * WHERE Length >= 1000,
            NTILE(20) OVER(PARTITION BY Accession ORDER BY COUNT(Coverage50) DESC) AS  'NTile'
   FROM #TEMP
   GROUP BY Accession
)
SELECT *
FROM SlicedData
WHERE NTile > 1

#group by accession
#    select * if coverage > quantile(coverage, 0.95)
