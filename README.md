# Codex Introduction — MKTG 411

A short introduction to Codex for coding and learning in Marketing Analytics.

- Authoritative slide source: `411 Codex Introduction.Rmd`
- Format: widescreen R Markdown ioslides, matching the course lectures
- Styling: `style.css` and the course title background in `Figures/`
- Scope: 19 slides including the title, with simple and complex task examples,
  access guidance, file-saving and debugging examples, and Chrome/Canvas setup
- Pending work: `Chat To Do`; completed requests and checks: `Chat Completed`

The downloadable [demo.R](demo.R) matches the working code on the coding slide.
Students download it from Canvas and place it in their practice folder. It uses
`tidyverse`, which must be installed in R. The four fictional orders are created
with `tribble()`, and the summary uses `summarise()` with the native pipe `|>`.
The intentional error appears on its own debugging slide, not in `demo.R`.
The five-minute activity remains the final slide. Instructor answers are in
HTML comments in the source.

Upload `demo.R` with the other lecture materials when publishing to Canvas.
The local file is ready for upload; this update does not post it to Canvas.

## Access guidance

Start with Free, claim the student $100 offer if eligible, and plan to upgrade
to a paid account if usage limits arise during the semester. Official links
and the September 7, 2026 verification date appear on the relevant slides.
Recheck current offer terms and plan details before a later semester.

The Spreadsheets plugin is the demonstration example. Its availability on a
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

No specific Canvas lecture was requested for a live run. Browser access and
downloads have not been tested against a student account. The Lecture 2 title
in the example should be matched to the actual Canvas page during the demo.

## Build status

The `.Rmd` source is authoritative. An existing `411-Codex-Introduction.html`
is present but has not been regenerated for these edits. Render only when the
instructor explicitly requests it. Source structure and example calculations
are checked separately from rendering.
