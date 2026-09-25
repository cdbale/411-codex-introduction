# Hillstrom email experiment

Each of the 64,000 rows represents one customer who
had purchased within the previous 12 months. Customers were randomly assigned
to an email featuring men's merchandise, an email featuring women's merchandise,
or no email. Outcomes cover the two weeks following the campaign.

## Files and setup

Download `hillstrom-practice.zip` from the Codex lecture on Canvas. Create
`MKTG-411/codex-practice` and extract the ZIP's contents directly into it.
Keep `hillstrom.csv`, `demo.qmd`, and `hillstrom-data-notes.md` together in that
folder, with no data subfolder. In RStudio, use `codex-practice` as the working
directory. Run the R code chunks in `demo.qmd` to load the data, then save before asking Codex to edit
the script. Open the same folder as a Codex project. The only required R package
collection is `tidyverse`.

## Column definitions

| Column | Meaning |
|---|---|
| `segment` | Assigned campaign: `Mens E-Mail`, `Womens E-Mail`, or `No E-Mail` |
| `visit` | 1 if the customer visited the website during the outcome period, otherwise 0 |
| `conversion` | 1 if the customer purchased during the outcome period, otherwise 0 |
| `spend` | Total dollars spent by this customer during the outcome period |
| `recency` | Months since the customer's last purchase before the campaign |
| `history` | Dollars spent in the previous year |
| `history_segment` | A category of previous-year spending |
| `mens` | 1 if the customer previously bought men's merchandise, otherwise 0 |
| `womens` | 1 if the customer previously bought women's merchandise, otherwise 0 |
| `newbie` | 1 if the customer was new in the previous 12 months, otherwise 0 |
| `channel` | Purchase channel in the previous year |
| `zip_code` | Urban, suburban, or rural classification, not an actual postal code |

The merchandise labels do not identify customer gender. `channel` describes
past shopping, not randomized campaign assignment. `spend` is spending per
customer over two weeks, not necessarily the value of a single order.