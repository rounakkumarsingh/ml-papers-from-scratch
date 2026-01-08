# Paper Lab

Paper Lab is a personal workspace for **reading, understanding, critiquing, and
(optionally) implementing research papers**.

Each paper is treated as a self-contained unit with its own notes, diagrams,
implementation plan, and blog-style writeups. The goal is deep understanding,
not leaderboard reproduction.

---

## Repository structure
```
paper-lab/
├── papers/
│   ├── <paper_slug>/
│   │   ├── README.md
│   │   ├── paper.pdf
│   │   ├── notes/
│   │   ├── diagrams/
│   │   ├── implementation/
│   │   └── blogs/
│   └── _TEMPLATE/
│
├── meta/
│   ├── reading_principles.md
│   ├── blogging_guidelines.md
│   └── reproduction_rules.md
│
└── tooling/
    ├── new_paper.fish
    └── check_paper_health.fish
```
---

## How to use this repository

1. Create a new paper directory using the tooling script.
2. Read the paper following the phases described in `meta/reading_principles.md`.
3. Write notes before writing any code.
4. Define scope in `implementation/PLAN.md`.
5. Implement only what improves understanding.
6. Write blogs as synthesis after understanding stabilizes.

---

## Philosophy

- Papers are read in passes, not linearly.
- Confusion is documented, not hidden.
- Code exists to validate understanding.
- Blogs are synthesis, not summaries.

---

## What this repository is not

- A tutorial collection
- A benchmark reproduction suite
- A polished library

It is a **thinking space** made explicit and reproducible.

