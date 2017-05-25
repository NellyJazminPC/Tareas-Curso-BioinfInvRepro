###############################
###### S N P Relate ###########
###Limpiamos el environment
rm(list=ls())

#Librerias
library(gdsfmt)
library(SNPRelate)

#VCF a GDS
vcf.fn <- "../data/SNP/Hypsiboas2.vcf"
snpgdsVCF2GDS(vcf50pb2, "../data/SNP/50pb2.gds", method="biallelic.only")
snpgdsSummary("../data/SNP/50pb2.gds") 
#Abrir el archivo GDS
genofile <- snpgdsOpen("../data/SNP/Hypsi.gds")
#Informacion de las Poblaciones
pop_code <- scan("../data/SNP/pop.txt", what=character())
table(pop_code)
head(pop_code)
#ID
sample.id <- read.gdsn(index.gdsn(genofile, "sample.id"))
sample.id
#PCA
pca <- snpgdsPCA(genofile, sample.id = NULL, snp.id = NULL, autosome.only = F, num.thread=2)
#Proporción de la varianza
pc.percent <- pca$varprop*100
head(round(pc.percent, 2))
#Creación de data.frame
tab <- data.frame(sample.id = pca$sample.id,EV1 = pca$eigenvect[,1], EV2 = pca$eigenvect[,2],stringsAsFactors = FALSE)
head(tab)
#Plot
plot(tab$EV2, tab$EV1, xlab="eigenvector 2", ylab="eigenvector 1")
#Revisar muestras y poblaciones tengan el mismo orden
sample.id
pop_code
head(cbind(sample.id, pop_code))

#Nuevo data.frame con los datos anteriores
tab <- data.frame(sample.id = pca$sample.id,pop = factor(pop_code)[match(pca$sample.id, sample.id)],
                  EV1 = pca$eigenvect[,1],EV2 = pca$eigenvect[,2],stringsAsFactors = FALSE)
head(tab)
#Paleta de colores
palette(c("red", "green", "blue"))
#Plot final
plot(tab$EV2, tab$EV1, col=as.integer(tab$pop), xlab="eigenvector 2", ylab="eigenvector 1")
legend("bottomright", legend=levels(tab$pop), pch="o", col=1:nlevels(tab$pop))