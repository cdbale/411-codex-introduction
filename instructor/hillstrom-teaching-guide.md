# Hillstrom live prompting exercise

## Purpose and preparation

Slides 11–18 discuss which email campaign a retailer should
repeat to increase short-term revenue for a similar audience. Students use
summaries and bar charts. No regression, machine learning, customer scoring,
dashboard, or other predictive model is required.

Allow approximately 20–25 minutes for the live sequence, plus the final
five-minute transfer activity. The class has previously encountered grouped
summaries and charts in the data-transformation and visualization lectures.

Distribute `hillstrom-practice.zip` through the Codex lecture on Canvas. Its
contents are only `demo.qmd`, `hillstrom-data-notes.md`, and `hillstrom.csv`, all
at the ZIP root. Students extract the contents directly into a separate
`MKTG-411/codex-practice` folder, use it as the R working directory, and start
a fresh Codex task in that same folder. Do not use the
lecture repository as the demonstration project: it contains the reference
answers and these notes. Run the starter in RStudio before class to check that
`tidyverse` is available and the working directory is correct.

Keep the slides visible while students inspect Codex's work and run the saved
R script. Save before edits, then reload the saved script in RStudio. Record
the first chart and tentative recommendation before the first follow-up.

The numerical contrast below has been run in R and independently checked in
Python. The reference charts are calculated teaching aids, not saved responses
from a separate Codex rehearsal. A live Codex response is variable and has not
been tested as a fixed transcript. If Codex immediately notices the first
prompt's weakness, credit that response and ask students to explain its critique.
The lesson still works by comparing the requested first metric with the measure
needed for the business decision.

## The teaching contrast

The first prompt asks for a real, correctly calculated metric that is incomplete
for the business question:

> In demo.qmd, make a bar chart comparing average spend among customers who
> purchased in the two email campaigns. Use R and tidyverse.

Women's-email purchasers spent more on average. That does not establish which
campaign generated more revenue across the whole assigned audience. The first
comparison conditions on a behavior that occurs after campaign assignment and
excludes nonbuyers. The groups of purchasers are not themselves randomized
comparison groups. Also, `spend` is two-week customer spending, not an order value.

Once all assigned customers are included, the campaign ranking reverses. The
no-email comparison estimates how much additional revenue each email generated
above purchases that occurred without an email. The coding can remain simple.

This progression deliberately improves the business specification as well as
the prompt. It does not demonstrate that wording alone produces better analysis.
Students must contribute the analytical judgment and verify the output.

## Facilitation sequence

| Slide | Class activity | Prompting practice | Evidence of improvement |
|---|---|---|---|
| 11. The Hillstrom Campaign Decision | Suggest meanings of campaign success and a useful comparison | Define the decision | Students distinguish the retailer's goal from available metrics |
| 12. Our First Prompt | Generate the purchaser-spending chart and record an initial recommendation | Inspect a limited request | Students identify who is excluded and what the chart establishes |
| 13. A Clearer Goal and Relevant Context | Read the data notes and answer Codex's clarification question | Supply context and resolve ambiguity | The agreed measure addresses additional sales over two weeks |
| 14. A More Useful Deliverable | Adapt the example output request and compare the new chart | Specify outputs and constraints | All three assigned groups, appropriate denominators, and comparison with no email |
| 15. Specific Feedback on the Output | Choose an actual weakness in the code, chart, or explanation | Give targeted feedback | A specific observed issue is corrected |
| 16. External Checks and Honest Conclusions | Check a calculation independently and critique the recommendation | Supply external evidence and invite disagreement | Correct arithmetic and a conclusion with appropriate limits |
| 17. Revision and Simplification | Request simplification and compare before/after results | Remove non-essential complexity | Easier-to-read work with the same required results and checks |
| 18. Our Recommendation to the Retailer | Write a recommendation, then compare Codex's revision | Specify audience and format | A concise, supported management answer |

Pause for student suggestions before displaying the next slide's follow-up.
The prompts describe outputs, not the required R operations. If the class chooses
a different defensible measure, discuss what question it answers before adapting
the suggested follow-up. Do not turn the exercise into a sequence of prescribed
function calls.

## Verified reference values

| Assigned group | Customers | Purchasers | Purchase rate | Total revenue | Revenue/customer | Increase vs. no email |
|---|---:|---:|---:|---:|---:|---:|
| Men's email | 21,307 | 267 | 1.2531% | $30,311.69 | $1.422617 | $0.769827 |
| Women's email | 21,387 | 189 | 0.8837% | $23,038.11 | $1.077202 | $0.424412 |
| No email | 21,306 | 122 | 0.5726% | $13,908.33 | $0.652789 | $0.000000 |

First-chart values: $113.526929 per purchaser for men's email and $121.894762
for women's email. There are 578 purchasers among 64,000 assigned customers.
Do not discard repeated-looking records: the file has no customer ID and its
documented unit is one assigned customer per row.

An independent arithmetic check to reveal after students calculate:

- Men's revenue per customer: $30,311.69 / 21,307 = $1.422616511.
- No-email revenue per customer: $13,908.33 / 21,306 = $0.652789355.
- Difference using unrounded means: $0.769827156 per assigned customer.
- Total revenue: $67,258.13, reconciled across the three groups.

`revenue per customer = purchase rate × spending per purchaser` is a useful
explanation for the reversal. Women's purchasers spent more, but a larger share
of those assigned men's email purchased. Do not attribute the difference to
customer gender: the labels describe merchandise, not gender.

Suggested management answer:

> For a comparable audience, we favor testing the men's email again on the
> short-term revenue criterion. It produced about $1.42 per assigned customer,
> an estimated $0.77 above no email, compared with $1.08 and an estimated $0.42
> increase for the women's email. These observed two-week results do not
> guarantee future performance or establish profitability without costs and margins.

Random assignment supports an average causal interpretation of the comparison
with no email. Our summaries do not quantify sampling uncertainty or establish
which particular individuals were persuaded. Do not imply a formal significance
test was performed or recommend a predictive targeting model for this lesson.

## Evaluating the improvement

Before and after revising, mark each criterion as met, partial, or missing:

- The analysis answers the retailer's decision rather than only describing a metric.
- The denominator and outcome window are explicit and appropriate.
- The recommendation uses a meaningful comparison with no email.
- The chart, table, and written answer agree on units and results.
- At least one calculation is checked independently.
- The conclusion acknowledges relevant limits and the code is understandable.

Keep this as a discussion aid, not a new graded assignment. Ask which criterion
improved because the class supplied missing information, which improved because
the deliverable became clearer, and which still needs human judgment.

If the first prompt already meets several criteria, record that honestly. Do
not invent an error or force the agent to omit its caveats. If simplification
does not require any changes, an explanation of why the current code is already
simple is a satisfactory outcome.

## Reference files and live-demo fallback

Run from the lecture repository root:

```r
source("instructor/hillstrom-reference.R")
```

The script writes two CSV summaries and these charts:

- [First requested chart: spending among purchasers](reference-output/01-spending-among-buyers.png)
- [Revised comparison: revenue per assigned customer](reference-output/02-revenue-per-customer.png)

If a live run is slow or unavailable, display those charts and tell the class
they are precomputed reference results. Students can still identify omissions,
write follow-ups, and compare the business implications. Do not describe the
reference outputs as a captured Codex conversation.

## Final five-minute activity

Slide 27 asks whether website visits tell the same story as revenue. Students
choose a fair comparison, formulate a prompt, check one result, and explain how
the finding relates to the original decision. It uses the same data and stays
open about how to code the analysis.

| Assigned group | Visitors | Visit rate | Increase vs. no email |
|---|---:|---:|---:|
| Men's email | 3,894 | 18.28% | 7.66 percentage points |
| Women's email | 3,238 | 15.14% | 4.52 percentage points |
| No email | 2,262 | 10.62% | 0.00 percentage points |

Men's email also leads on this measure. A visit is not a sale, so agreement in
rankings does not make the two objectives interchangeable.

## Sources and scope of evidence

- [Hillstrom's original challenge](https://blog.minethatdata.com/2008/03/minethatdata-e-mail-analytics-and-data.html) describes the study and fields. Data provenance is in `hillstrom-data-notes.md`.
- [OpenAI: Prompt engineering](https://developers.openai.com/api/docs/guides/prompt-engineering) supports clear instructions, examples, and relevant context.
- [Anthropic: Effective context engineering](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) discusses focused context and refinement in response to failures.
- [Madaan et al., Self-Refine (2023)](https://arxiv.org/abs/2303.17651) reports gains from iterative feedback and refinement on the tasks studied.
- [Huang et al. (2024)](https://arxiv.org/abs/2310.01798) documents limits to intrinsic reasoning self-correction without external feedback.

The academic results concern their evaluated models and tasks. They do not
guarantee how a current Codex session will respond. "Remove non-essential
complexity" is the instructor's revision heuristic, not an experimentally
validated phrase. Numerical claims above come from the supplied dataset.
