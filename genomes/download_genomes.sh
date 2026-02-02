#!/bin/bash
set -e
#!/bin/bash
set -e

echo "[INFO] Downloading Elizabethkingia anophelis genomes from NCBI"

mkdir -p fasta
cd fasta

# R26
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/023/665/GCF_002023665.2_ASM202366v2/GCF_002023665.2_ASM202366v2_genomic.fna.gz

# JUNP353
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/009/810/215/GCF_009810215.1_ASM981021v1/GCF_009810215.1_ASM981021v1_genomic.fna.gz

# Eli4
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/044/324/985/GCF_044324985.1_ASM4432498v1/GCF_044324985.1_ASM4432498v1_genomic.fna.gz

# Eli5
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/044/324/995/GCF_044324995.1_ASM4432499v1/GCF_044324995.1_ASM4432499v1_genomic.fna.gz

# Eli6
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/044/325/005/GCF_044325005.1_ASM4432500v1/GCF_044325005.1_ASM4432500v1_genomic.fna.gz

# F3201
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/022/085/GCF_002022085.1_ASM202208v1/GCF_002022085.1_ASM202208v1_genomic.fna.gz

# ES-CHC077
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/045/571/555/GCF_045571555.1_ASM4557155v1/GCF_045571555.1_ASM4557155v1_genomic.fna.gz

# 296-96 (replace if accession differs)
wget -c https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/XXXX/XXX/XXX/GCF_XXXXXXX.X_*/GCF_XXXXXXX.X_*_genomic.fna.gz

echo "[INFO] Download complete"
echo "[INFO] Decompressing genomes..."

gunzip -f *.gz

echo "[INFO] All genomes downloaded and decompressed"
