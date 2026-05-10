# Figures

This folder contains visualization outputs generated from shotgun metagenomic analysis of the human gut microbiome sample (`SRR32570884`).

## Included Figures

### Phylum Composition Plot
Visualizes the relative abundance of major bacterial phyla identified using Kraken2 classification.

### Species Composition Plot
Displays the most abundant microbial species detected in the sample.

### Virus Composition Plot
Shows low-abundance viral taxa detected in the metagenomic dataset, including bacteriophage-associated sequences.

## Visualization Tools
Figures were generated using:
- R
- ggplot2
- FastQC

## Notes
- Relative abundance values were obtained from Kraken2 classification reports
- Viral abundance was extremely low compared to bacterial abundance
- Some plots were generated using filtered subsets of the Kraken2 report for clarity and readability
