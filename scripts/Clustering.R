library("reshape2")
library("ade4")
library("dendextend")
library("phylogram")
library("ape")
library("phangorn")
library("phytools")
library("viridis")
library("plyr")

setwd("~/Bioinf/Notebooks/ncbi_hack2")
mash <- read.csv("~/Bioinf/Notebooks/ncbi_hack2/CDDcount_mash.csv")
cdd <- read.csv("~/Bioinf/Notebooks/ncbi_hack2/CDDcount_RPSTBLN.csv")

#Make sure both df contain same datasets.
commdatasets <- intersect(mash$sra,cdd$sra)

#Subset
cdd <- cdd[cdd$sra %in% commdatasets, ]
mash <- mash[mash$sra %in% commdatasets,]
rownames(cdd) <- cdd$sra
cdd$sra <- NULL
rownames(mash) <- mash$sra
mash$sra <- NULL

#Euclidian distance matrices.
mashdist <- dist(mash, method="canberra")
cdddist <- dist(cdd, method="canberra")
#Mantel test
manres <- mantel.rtest(mashdist, cdddist, nrepet=1000)

#Clustering computation
## ward.D (0.9143279)
## ward.D2 (0.915805)
## single (0.9305761)
## complete (0.9113737)
## average (0.9172821)
## mcquitty (0.9202363)
## median (0.9601182)
## centroid (0.9601182)

mashclus <- hclust(mashdist, method = "ward.D")
cddclus <- hclust(cdddist, method = "ward.D")
#Dendrograms
mashden <- as.dendrogram (mashclus)
cddden <- as.dendrogram (cddclus)
#Wrap in list
dend_list <- dendlist(mashden, cddden)

mashphyl <- as.phylo(mashden)
cddphyl <- as.phylo(cddden)
mashphyl <- ladderize(mashphyl)
cddphyl <- ladderize(cddphyl)

assmat <- cbind(cddphyl$tip.label, cddphyl$tip.label)
coplot <- cophylo(mashphyl, cddphyl, rotate=TRUE, assoc=assmat)
cophyloplot(coplot$trees[[1]], coplot$trees[[2]], length.line=0, gap=0,space=250,show.tip.label=FALSE, assoc=assmat)
#plot(coplot, show.tip.labels=FALSE, type="cladogram")
RF.dist(coplot$trees[[1]], coplot$trees[[2]], normalize = TRUE, check.labels = TRUE, rooted = FALSE)

#Continue with cophyloplot, color with K=10
mash_switched <- as.dendrogram(coplot$trees[[1]])
cdd_switched <- as.dendrogram(coplot$trees[[2]])
mashden_col <- color_branches(mashden, k=10, groupLabels=TRUE)
cddden_col <- color_branches(cddden, k=10, groupLabels=TRUE)
dend_list <- dendlist(mashden_col, cddden_col)


tangleplot <- tanglegram(mashden_col, 
           cddden_col, 
           faster=TRUE, 
           main_left="MASH datasets",
           main_right="RPS-tBLASTn datasets",
           axes=FALSE, 
           lwd=1, 
           margin_inner = 0.5, 
           common_subtrees_color_branches = TRUE)
tangleplot
