# Hillstrom email experiment

Kevin Hillstrom released these data for the 2008 MineThatData E-Mail Analytics
and Data Mining Challenge. Each of the 64,000 rows represents one customer who
had purchased within the previous 12 months. Customers were randomly assigned
to an email featuring men's merchandise, an email featuring women's merchandise,
or no email. Outcomes cover the two weeks following the campaign.

The retailer's classroom decision is whether to repeat either campaign for a
similar audience to increase sales. That future decision is a teaching scenario,
not another observed campaign in the file. The data do not include campaign
costs, product margins, or longer-term outcomes.

## Files and setup

Download `hillstrom-practice.zip` from the Codex lecture on Canvas. Create
`MKTG-411/codex-practice` and extract the ZIP's contents directly into it.
Keep `hillstrom.csv`, `demo.qmd`, and `hillstrom-data-notes.md` together in that
folder, with no data subfolder. In RStudio, use `codex-practice` as the working
directory. Run the R code chunks in `demo.qmd` to load the data, then save before asking Codex to edit
the script. Open the same folder as a Codex project. The only required R package
collection is `tidyverse`.

The CSV retains all 64,000 rows and all 12 original fields. No rows were sampled,
and no outcomes were modified. Zero spending is an observed outcome, not a
missing value. The downloaded copy has no missing cells.

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

## Attribution and provenance

- Creator: Kevin Hillstrom, MineThatData, March 20, 2008.
- [Original challenge and study description](https://blog.minethatdata.com/2008/03/minethatdata-e-mail-analytics-and-data.html).
- [scikit-uplift's documented copy](https://www.uplift-modeling.com/en/latest/api/datasets/fetch_hillstrom.html).
- [Download used](https://hillstorm1.s3.us-east-2.amazonaws.com/hillstorm_no_indices.csv.gz), retrieved September 25, 2026.
- The compressed download matched the checksum in the [loader source](https://www.uplift-modeling.com/en/latest/_modules/sklift/datasets/datasets.html): MD5 `a68a81291f53a14f4e29002629803ba3`.
- Decompressed CSV SHA-256: `00a6a868e05a9ffe7382da51629f6d6dce88c5acfc945e79d314ebc78fd3a2c0`.

The original site's HTTPS download failed certificate validation during setup.
This copy comes from the documented mirror above, with no certificate checks bypassed.
