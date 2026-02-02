# Pan-Genome and Comparative Genomics of *Elizabethkingia anophelis*

## Project Overview
This repository contains a hands-on comparative genomics and pan-genome analysis of multiple *Elizabethkingia anophelis* strains. The project was built end-to-end using Linux-based bioinformatics tools and Python to explore core vs accessory genome structure, strain-level gene content variation, and evolutionary patterns driven by horizontal gene transfer (HGT).

Rather than focusing on pre-built pipelines or GUI tools, this project emphasizes building and debugging real-world genomics workflows, feature engineering, and biologically grounded exploratory analysis.

---

## Scientific Goals
- Characterize the **core and accessory genome** of *E. anophelis*
- Identify **strain-level gene content divergence**
- Detect **clonal groups and divergent lineages**
- Explore **horizontal gene transfer** through accessory genome structure
- Prepare a foundation for **AMR gene integration and phylogenomics**

---

## Dataset
Strains analyzed:
- R26
- JUNP353
- Eli4
- Eli5
- Eli6
- F3201
- ES-CHC077
- 296-96

All genomes were obtained from NCBI RefSeq/GenBank and processed locally.

---

## Methods & Pipeline

### 1. Genome Annotation
Tool: **Prokka**

- Annotated each genome independently
- Generated standardized GFF, FAA, FFN, and annotation summaries
- Extracted genome-level features for comparative analysis

Key outputs:
- `prokka_<strain>/*.gff`
- `prokka_<strain>/*.tsv`
- `prokka_<strain>/*.txt`

---

### 2. Baseline Comparative Features
From Prokka outputs, the following features were extracted:
- Genome size (Bases)
- CDS count
- rRNA and tRNA counts
- Contig count
- Efflux-related gene counts

These were merged into a master feature table and used for initial exploratory PCA.

Purpose:
- Sanity-check strain-level structure
- Establish baseline genomic differences

---

### 3. Pan-Genome Analysis
Tool: **Roary**

All Prokka GFF files were used as input to build the pan-genome.

Command (simplified):
```
roary -e -n -v -p 4 -f roary_out roary_input/*.gff
```

Key outputs:
- `gene_presence_absence.csv`
- `gene_presence_absence.Rtab`
- `core_gene_alignment.aln`
- `summary_statistics.txt`

---

## Pan-Genome Summary
From Roary:

- Core genes: 2,798
- Shell genes: 2,131
- Cloud genes: 1,871
- Total pan-genome size: 6,800 genes

Interpretation:
- ~41% core genome
- ~60% accessory genome (shell + cloud)

This indicates high genomic plasticity and extensive strain-specific gene content, consistent with horizontal gene transfer and niche adaptation.

---

## Accessory Genome PCA (Key Result)

PCA was performed on the accessory genome gene presence/absence matrix (thousands of genes) to explore lineage structure and HGT-driven variation.

Key findings:
- **Eli4 / Eli5 / Eli6** form a tight cluster → near-clonal gene content
- **JUNP353** is a strong outlier → highly divergent accessory genome
- **ES-CHC077 & 296-96** form a distinct sub-cluster
- **R26** and **F3201** show intermediate divergence

This demonstrates clear strain-level evolutionary structure driven by accessory genome variation.

---

## Biological Interpretation

The large accessory genome fraction suggests that *E. anophelis* exhibits substantial genomic flexibility. Divergence patterns indicate:

- Strong clonality within specific strain groups
- Extensive strain-specific gene acquisition
- Likely horizontal gene transfer shaping lineage structure

These patterns are consistent with opportunistic pathogens and environmentally adaptable bacteria.

---

## Tools & Technologies
- Prokka (genome annotation)
- Roary (pan-genome analysis)
- Python (pandas, scikit-learn, matplotlib)
- Linux command-line workflows
- Conda environments

---


## Reproducibility
All analyses were performed using command-line tools and Python notebooks. Environment-specific issues (Perl and Conda dependencies) were resolved manually, reflecting real-world genomics pipeline development.

---

## Current Status
Completed:
- Genome annotation
- Pan-genome construction
- Accessory genome PCA
- Lineage-level interpretation

---

## Planned Extensions
- Identification of strain-specific genes (e.g., JUNP353 unique genes)
- Integration of AMR gene prediction (AMRFinderPlus)
- Core genome phylogenetic tree reconstruction
- Mapping AMR genes onto pan-genome categories
- Accessory genome size vs resistance profiling

---

## Motivation
This project is part of a learning-by-building approach to bioinformatics, focusing on real datasets, real tools, and real biological questions rather than tutorial-driven workflows.

---

## Author
Nischay Mehta  
B.Tech Bioinformatics Aspirant (Class of 2027)  
Focus: Comparative genomics, microbial genomics, and ML-driven exploratory analysis

---

## Disclaimer
This is an educational and exploratory research project. Results are intended for learning and portfolio demonstration and are not clinical or diagnostic.

