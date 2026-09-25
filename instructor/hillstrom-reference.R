# Instructor reference only. Do not include in the student practice folder.
# Run from the lecture repository root:
# Rscript instructor/hillstrom-reference.R
# These are deterministic reference calculations, not a recorded Codex response.

library(tidyverse)

hillstrom <- read_csv("hillstrom.csv", show_col_types = FALSE)
stopifnot(
  nrow(hillstrom) == 64000,
  ncol(hillstrom) == 12,
  !anyNA(hillstrom),
  all(hillstrom$conversion %in% c(0, 1)),
  all(hillstrom$visit %in% c(0, 1)),
  all(hillstrom$spend >= 0),
  all((hillstrom$spend > 0) == (hillstrom$conversion == 1))
)

# First prompt: a valid descriptive measure that misses the business objective.
buyer_summary <- hillstrom |>
  filter(conversion == 1, segment != "No E-Mail") |>
  group_by(segment) |>
  summarise(spend_per_buyer = mean(spend), .groups = "drop")

# Revised deliverable: comparable outcomes for every assigned customer.
campaign_summary <- hillstrom |>
  group_by(segment) |>
  summarise(
    customers = n(),
    buyers = sum(conversion),
    conversion_rate = mean(conversion),
    total_revenue = sum(spend),
    revenue_per_customer = mean(spend),
    .groups = "drop"
  )

control_revenue <- campaign_summary |>
  filter(segment == "No E-Mail") |>
  pull(revenue_per_customer)

campaign_summary <- campaign_summary |>
  mutate(incremental_revenue_per_customer = revenue_per_customer - control_revenue)

# A second arithmetic route verifies the denominator and revenue calculation.
stopifnot(
  sum(campaign_summary$customers) == nrow(hillstrom),
  sum(campaign_summary$buyers) == sum(hillstrom$conversion),
  isTRUE(all.equal(campaign_summary$revenue_per_customer,
                   campaign_summary$total_revenue / campaign_summary$customers))
)

output_dir <- "instructor/reference-output"
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
write_csv(buyer_summary, file.path(output_dir, "buyer-summary.csv"))
write_csv(campaign_summary, file.path(output_dir, "campaign-summary.csv"))

campaign_labels <- c("Mens E-Mail" = "Men's email", "Womens E-Mail" = "Women's email",
                     "No E-Mail" = "No email")

buyer_chart <- ggplot(buyer_summary, aes(x = segment, y = spend_per_buyer)) +
  geom_col(fill = "#477b95", width = 0.6) +
  geom_text(aes(label = sprintf("$%.2f", spend_per_buyer)), vjust = -0.5, size = 6) +
  scale_x_discrete(labels = campaign_labels) +
  scale_y_continuous(labels = scales::label_dollar(), expand = expansion(mult = c(0, 0.15))) +
  labs(title = "Spending among purchasers", x = NULL, y = "Dollars per purchaser",
       subtitle = "Two-week spending, excluding customers who did not buy",
       caption = "Hillstrom / MineThatData (2008). Instructor reference calculation.") +
  theme_minimal(base_size = 17)

revenue_chart <- ggplot(campaign_summary, aes(x = segment, y = revenue_per_customer)) +
  geom_col(fill = "#477b95", width = 0.6) +
  geom_text(aes(label = sprintf("$%.2f", revenue_per_customer)), vjust = -0.5, size = 6) +
  scale_x_discrete(limits = c("Mens E-Mail", "Womens E-Mail", "No E-Mail"),
                   labels = campaign_labels) +
  scale_y_continuous(labels = scales::label_dollar(), expand = expansion(mult = c(0, 0.15))) +
  labs(title = "Revenue across all assigned customers", x = NULL, y = "Dollars per customer",
       subtitle = "Two-week spending, including customers who did not buy",
       caption = "Hillstrom / MineThatData (2008). Observed means, not guaranteed future revenue.") +
  theme_minimal(base_size = 17)

ggsave(file.path(output_dir, "01-spending-among-buyers.png"), buyer_chart,
       width = 10, height = 5.6, dpi = 140, bg = "white")
ggsave(file.path(output_dir, "02-revenue-per-customer.png"), revenue_chart,
       width = 10, height = 5.6, dpi = 140, bg = "white")

print(buyer_summary)
print(campaign_summary, width = Inf)
