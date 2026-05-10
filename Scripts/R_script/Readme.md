
# Scripts

This folder contains scripts used for shotgun metagenomic analysis of the human gut microbiome sample (`SRR32570884`).

## Included Analyses
- Loading Kraken2 classification reports
- Data preprocessing and filtering
- Taxonomic abundance analysis
- Visualization of microbial composition
- Export of processed abundance tables

---

## Main Script

R script used for:
- Importing Kraken2 output files
- Assigning column names
- Filtering phylum-, species-, and virus-level taxa
- Generating abundance plots using ggplot2
- Exporting processed CSV files

---

## Tools and Libraries
- R
- ggplot2, tidyverse

---

## Workflow Summary

```text
FASTQ → FastQC → Kraken2 → R analysis → Visualization
````

---

## Output Generated

The scripts generated:

* Phylum composition plots
* Species abundance plots
* Virus composition plots
* CSV abundance tables

---

## Notes

Plots were generated using relative abundance values obtained from Kraken2 classification reports.



