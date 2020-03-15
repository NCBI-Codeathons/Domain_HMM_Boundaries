library("reshape2")
library("ade4")
library("dendextend")
library("phylogram")
library("ape")
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
mashdist <- dist(mash, method="euclidean")
cdddist <- dist(cdd, method="euclidean")
#Mantel test
manres <- mantel.rtest(mashdist, cdddist, nrepet=1000)

#Clustering computation
mashclus <- hclust(mashdist, method = "ward.D2")
cddclus <- hclust(cdddist, method = "ward.D2")
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
cophyloplot(mashphyl, cddphyl, type="phylogram", length.line=0, gap=0,space=250,show.tip.label=FALSE, assoc=assmat)
  #Tanglegram
#dend_untangle <- untangle(mashden, cddden, method="ladderize")
#tanglegram(dend_untangle, faster=TRUE, axes=FALSE, dLeaf=1)

#  untangle(method = "ladderize") %>% # Find the best alignment layout
#  tanglegram()


