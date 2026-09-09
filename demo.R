# MKTG 411: Codex introduction
# Each row is one fictional order. Revenue is in US dollars.
# If needed, install tidyverse once with install.packages("tidyverse").
# Save this file before asking Codex to change it, then reload it afterward.

library(tidyverse)

sales <- tribble(
  ~channel, ~revenue,
  "Email",      120,
  "Email",       80,
  "Search",     150,
  "Search",      50
)

sales |>
  summarise(total_revenue = sum(revenue))
