# Codex Introduction — MKTG 411

A short introduction to Codex for coding and learning in Marketing Analytics.

- Authoritative slide source: `411 Codex Introduction.Rmd`
- Format: widescreen R Markdown ioslides, matching the course lectures
- Styling: `style.css` and the course title background in `Figures/`
- Published slides: [GitHub Pages](https://cdbale.github.io/411-codex-introduction/)
- Scope: 27 slides including the title, with access guidance, an interactive
  Hillstrom email-campaign analysis, learning prompts, and Chrome/Canvas setup
- Pending work: `Chat To Do`; completed requests and checks: `Chat Completed`

## Hillstrom interactive example

Slide 10 asks students to select Luna with Medium reasoning effort for the demo.
Slides 11–18 ask which email campaign a retailer should repeat to increase
short-term revenue for a similar audience. Students first request a chart of
spending among purchasers, then improve the prompt through clearer goals,
context, output examples, specific feedback, independent checks, and revision.
The comparison changes when everyone assigned to each campaign is included.
All analysis uses summaries and charts, without a predictive model.

- Student download: [hillstrom-practice.zip](hillstrom-practice.zip).
- Quarto starter: [demo.qmd](hillstrom-practice/demo.qmd), requiring `tidyverse`.
- Study description and column definitions: [hillstrom-data-notes.md](hillstrom-data-notes.md).
- Full data: [hillstrom.csv](hillstrom.csv), 64,000 customers and 12 fields.
- Instructor sequence, reference values, and contingency plan: [teaching guide](instructor/hillstrom-teaching-guide.md).
- Tested calculation and chart code: [instructor reference](instructor/hillstrom-reference.R).

Students download the ZIP from the Codex lecture on Canvas and extract its
contents directly into `MKTG-411/codex-practice`. The CSV, Quarto document, and Markdown
notes are all at the ZIP root, with no data subfolder. Use that folder in
RStudio and Codex so the agent does not encounter the instructor answers.
The starter contains only the data import and neutral comments. The final
five-minute activity applies the same prompting practices to website visits.

The reference analysis runs in R, with numerical results independently checked
in Python. The two reference charts have been visually inspected. They are
precomputed examples, not a recorded live Codex conversation. Actual responses
may already identify the initial prompt's limitation.

The Hillstrom ZIP, Lecture Setup ZIP, slide HTML download, and GitHub Pages
link are published under **Data → Codex** in the
[Fall 2026 Canvas course](https://byu.instructure.com/courses/38688/modules#module_415181).
The setup slide directs students there. Publication was verified September 25, 2026.

## Access guidance

Start with Free, claim the student $100 offer if eligible, and plan to upgrade
to a paid account if usage limits arise during the semester. Official links
and the September 7, 2026 verification date appear on the relevant slides.
Recheck current offer terms and plan details before a later semester.

Plugins, skills, and connectors are defined on a dedicated slide with two
examples each. The Excel revenue-check demonstration is on the following slide.
The Spreadsheets plugin's availability on a
student Free account has not been verified. The slide provides an instructor
demonstration fallback, and the R practice does not depend on the plugin.

## Lecture Setup skill

The reusable source is [skills/lecture-setup/SKILL.md](skills/lecture-setup/SKILL.md).
The display name is **Lecture Setup** and its invocation is `$lecture-setup`.
[lecture-setup.zip](lecture-setup.zip) contains the skill folder for distribution.
Keep that ZIP beside the rendered slides so their relative download link works,
or upload it to Canvas and update the slide link when publishing.

Students extract the ZIP and ask Codex to install the `lecture-setup` folder as
a personal skill, then start a new task. They set up the Chrome plugin/extension,
sign in to Canvas themselves, and grant site access when prompted. The slides
include an example prompt with a lecture title, Canvas tab, and local course root.

The skill reuses or creates the matching lecture folder, preserves existing
work, verifies the downloads, and records their status in `lecture-materials.md`.
It downloads published student materials without completing assignments or
changing Canvas. It asks for missing course/lecture/destination details and
reports blocked downloads instead of bypassing browser access restrictions.

The example targets Lecture 7, Live Workshop, in the Data unit. The instructor
will add the workshop materials before the demonstration. Browser access and
downloads have not been tested against a student account.

## Prompting guidance and sources

The Hillstrom sequence embeds the prompting practices in the class activity.
It covers clear goals, relevant context, examples, clarification, external
feedback, and targeted revision, including "remove non-essential complexity."
The sources reviewed for the original guidance are retained below. The data
source and OpenAI guidance were checked again September 25, 2026:

- [OpenAI: Prompt engineering](https://developers.openai.com/api/docs/guides/prompt-engineering)
  supports clear instructions, examples, and relevant context.
- [Anthropic: Effective context engineering (2025)](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents)
  recommends focused context and refining instructions in response to observed failures.
- [Madaan et al.: Self-Refine (2023)](https://arxiv.org/abs/2303.17651)
  found benefits from iterative feedback and refinement on the tasks studied.
- [Huang et al.: Large Language Models Cannot Self-Correct Reasoning Yet (2024)](https://arxiv.org/abs/2310.01798)
  found limits, including degraded results, for reasoning self-correction without
  external feedback. This motivates checking revisions against evidence.

The academic findings concern the models and tasks tested, not a guaranteed
effect for current Codex. The simplification phrase is course guidance, not a
research-validated formula. Citations appear directly on the new slides.

## Build status

The `.Rmd` source is authoritative. The instructor finalized
`411-Codex-Introduction.html` and its matching `index.html` on September 25, 2026.
GitHub Pages publishes `index.html` from the root of `main`; `.nojekyll` serves
the existing static files. The live deck matches the committed HTML, and the
Canvas HTML download matches the local file. No agent rendering was performed.
Render only when the instructor explicitly requests it.
