# =====================================================
# Shotgun Metagenomic Analysis Workflow
# =====================================================

# Load library
library(ggplot2)

# =====================================================
# Set Working Directory
# =====================================================

setwd("C:/Users/Khushi/Documents")

getwd()
list.files()

# =====================================================
# Load Kraken2 Report
# =====================================================

report <- read.table(
  "report.txt",
  sep = "\t",
  header = FALSE,
  fill = TRUE
)

# =====================================================
# Assign Column Names
# =====================================================

colnames(report) <- c(
  "percent",
  "clade_count",
  "direct_count",
  "rank",
  "taxid",
  "name"
)

# Check data
head(report)
str(report)

# =====================================================
# Kingdom-Level Composition
# =====================================================

kingdom <- report[report$rank == "D", ]

ggplot(
  kingdom,
  aes(
    x = reorder(name, percent),
    y = percent
  )
) +
  
  geom_bar(
    stat = "identity",
    fill = "steelblue"
  ) +
  
  geom_text(
    aes(label = round(percent, 2)),
    hjust = -0.2,
    size = 3
  ) +
  
  coord_flip() +
  
  labs(
    title = "Kingdom-level microbiome composition",
    x = "Kingdom",
    y = "Relative abundance (%)"
  )

# Save plot
ggsave(
  "kingdom_plot.png",
  width = 8,
  height = 5
)

# =====================================================
# Phylum-Level Composition
# =====================================================

phylum <- report[report$rank == "P", ]

ggplot(
  phylum,
  aes(
    x = reorder(name, percent),
    y = percent
  )
) +
  
  geom_bar(
    stat = "identity",
    fill = "darkgreen"
  ) +
  
  geom_text(
    aes(label = round(percent, 2)),
    hjust = -0.2,
    size = 3
  ) +
  
  coord_flip() +
  
  labs(
    title = "Phylum-level microbiome composition",
    x = "Phylum",
    y = "Relative abundance (%)"
  )

# Save plot
ggsave(
  "phylum_plot.png",
  width = 8,
  height = 5
)

# =====================================================
# Species-Level Composition
# =====================================================

species <- report[report$rank == "S", ]

top_species <- species[
  order(-species$percent),
][1:10, ]

ggplot(
  top_species,
  aes(
    x = reorder(name, percent),
    y = percent
  )
) +
  
  geom_bar(
    stat = "identity",
    fill = "orange"
  ) +
  
  geom_text(
    aes(label = round(percent, 2)),
    hjust = -0.2,
    size = 3
  ) +
  
  coord_flip() +
  
  labs(
    title = "Top 10 microbial species",
    x = "Species",
    y = "Relative abundance (%)"
  )

# Save plot
ggsave(
  "species_plot.png",
  width = 8,
  height = 5
)

# =====================================================
# Virus Composition Analysis
# =====================================================

virusfiltered <- read.table(
  "virusfiltered.txt",
  sep = "\t",
  header = FALSE,
  fill = TRUE
)

colnames(virusfiltered) <- c(
  "percent",
  "clade_count",
  "direct_count",
  "rank",
  "taxid",
  "name"
)

ggplot(
  virusfiltered,
  aes(
    x = reorder(name, clade_count),
    y = clade_count
  )
) +
  
  geom_bar(
    stat = "identity",
    fill = "purple"
  ) +
  
  geom_text(
    aes(label = clade_count),
    hjust = -0.2,
    size = 3
  ) +
  
  coord_flip() +
  
  labs(
    title = "Virus composition",
    x = "Virus taxa",
    y = "Read counts"
  )

# Save plot
ggsave(
  "virus_plot.png",
  width = 8,
  height = 5
)

# =====================================================
# Export Tables
# =====================================================

write.csv(
  phylum,
  "phylum_abundance.csv",
  row.names = FALSE
)

write.csv(
  top_species,
  "top_species.csv",
  row.names = FALSE
)

write.csv(
  virusfiltered,
  "virus_abundance.csv",
  row.names = FALSE
)

# =====================================================
# Session Information
# =====================================================

sessionInfo()