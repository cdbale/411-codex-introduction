# Hypothetical quarterly marketing data: 2023 Q1 through 2025 Q4.
# Each row represents one quarter. All monetary values are in US dollars.
set.seed(412)

Marketing_data <- data.frame(
  Quarter_start = seq(as.Date("2023-01-01"), by = "quarter", length.out = 12),
  Paid_search_spend = round(runif(12, min = 8000, max = 15000), -2),
  Paid_social_spend = round(runif(12, min = 5000, max = 10000), -2),
  Email_spend = round(runif(12, min = 1000, max = 3000), -2)
)

Marketing_data$Quarter <- paste(
  format(Marketing_data$Quarter_start, "%Y"),
  paste0("Q", rep(1:4, times = 3))
)

Marketing_data$Total_marketing_spend <- with(
  Marketing_data,
  Paid_search_spend + Paid_social_spend + Email_spend
)

# Invent revenue using spending, a seasonal pattern, and random variation.
# These relationships are simulation assumptions, not estimated effects.
Seasonal_revenue <- rep(c(-3000, 0, 2000, 8000), times = 3)
Marketing_data$Revenue <- with(
  Marketing_data,
  round(
    30000 +
      2 * Paid_search_spend +
      1.5 * Paid_social_spend +
      3 * Email_spend +
      Seasonal_revenue +
      rnorm(12, mean = 0, sd = 4000)
  )
)

# Place the quarter label first for easy reading.
Marketing_data <- Marketing_data[c(
  "Quarter", "Quarter_start", "Paid_search_spend", "Paid_social_spend",
  "Email_spend", "Total_marketing_spend", "Revenue"
)]

print(Marketing_data)

print(Marketing_data)
