# FastQC Analysis

## Overview
Quality control analysis was performed on shotgun metagenomic sequencing reads using FastQC before downstream microbiome analysis.

The objective of this step was to evaluate sequencing quality, read length distribution, GC content, and overall suitability of the dataset for taxonomic classification.

---

## Dataset
- Sample accession: `SRR32570884`
- Sample type: Human gut metagenome
- Sequencing strategy: Shotgun metagenomic sequencing

---

## FastQC Summary Statistics

| Metric | Value |
|---|---|
| Total Sequences | 827,900 |
| Total Bases | 202.1 Mbp |
| Sequence Length | 35–301 bp |
| GC Content | 50% |
| Encoding | Sanger / Illumina 1.9 |

---

## Quality Assessment Results

### Per-base Sequence Quality
- High-quality scores were observed across most read positions
- No major quality degradation was detected

### Per-sequence Quality Scores
- Majority of reads demonstrated good sequencing quality
- No substantial poor-quality read population was observed

### GC Content
- GC content remained within the expected range for gut microbiome samples
- No major GC bias was identified

### Sequence Length Distribution
- Reads ranged from 35 bp to 301 bp
- Variable read lengths are expected in shotgun metagenomic datasets due to trimming and sequencing variability

### Per-base Sequence Content Warning
A warning was observed in per-base sequence content analysis. This is commonly seen in metagenomic datasets because reads originate from mixed microbial populations and does not necessarily indicate poor sequencing quality.

---

## Conclusion
The sequencing dataset passed major quality control checks and was considered suitable for downstream metagenomic analysis, including taxonomic classification and microbiome composition analysis.

---

## Files
- `SRR32570884_fastqc.html`
- `SRR32570884_fastqc.zip`
