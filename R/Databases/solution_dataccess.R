# Author: Roland Krause

library(biomaRt)

# Identify SNPs in KCNA2 from ENSEMBL BioMart
genes.of.choice= c("KCNA2")


# Find ensembl id via hgnc name
listMarts(host="www.ensembl.org")


gene.biomart = useMart(biomart = "ENSEMBL_MART_ENSEMBL", 
                       host="www.ensembl.org")

gene.set = useDataset(mart= gene.biomart, "hsapiens_gene_ensembl")

gene.ids = getBM("ensembl_gene_id", filter="hgnc_symbol", 
                 genes.of.choice, gene.set)
# Find SNPs
snp.biomart = useMart(biomart="ENSEMBL_MART_SNP", 
                                     host="www.ensembl.org")

snp.set = useDataset(mart= snp.biomart, "hsapiens_snp")

snps = getBM(attributes = c("refsnp_id","refsnp_source"), filters="ensembl_gene", 
             values=gene.ids, snp.set)
write.table(snps, "snps.txt")
