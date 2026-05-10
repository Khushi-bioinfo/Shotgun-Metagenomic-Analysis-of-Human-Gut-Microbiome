# Results

This folder contains the primary output files generated from shotgun metagenomic analysis of the human gut microbiome sample (`SRR32570884`).

## Files

### `report.txt`
Main Kraken2 classification report containing:
- Taxonomic classifications
- Relative abundance percentages
- Read counts
- Taxonomic hierarchy information

The report was used for downstream filtering, visualization, and microbiome composition analysis.

---

## Analysis Performed Using `report.txt`
- Phylum-level abundance analysis
- Species-level composition analysis
- Viral taxa identification
- Relative abundance visualization in R

---

## Notes
- Kraken2 was used for taxonomic classification
- Relative abundance values were visualized using ggplot2 in R
- Filtered subsets of the report are available in the `data/` directory
