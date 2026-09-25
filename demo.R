# MKTG 411: Codex introduction
# Hillstrom email experiment: one row per assigned customer.
# Download hillstrom-practice.zip from Canvas and extract to codex-practice.
# Keep the CSV, this script, and the notes together in that folder.
# Use codex-practice as the R working directory.
# Read hillstrom-data-notes.md for the study and column definitions.
# If needed, install tidyverse once with install.packages("tidyverse").
# Save this file before asking Codex to change it, then reload it afterward.

library(tidyverse)

hillstrom <- read_csv("hillstrom.csv", show_col_types = FALSE)

# Our class will decide what evidence the retailer needs.
# Ask Codex to add the analysis here. Keep the original data unchanged.
