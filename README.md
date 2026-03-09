# Math Solver

Formalize physics proofs with Lean 4 + AI assistance.

## Quick Start

```bash
# Setup (first time)
lake exe cache get   # Download Mathlib cache (~5 min)
lake build           # Build project

# Compile LaTeX
./scripts/compile_tex.sh output/tex/template.tex
```

## Workflow

1. Write problem in `input/*.md`
2. AI generates Lean proof in `MathSolver/*.lean`
3. Export to `output/tex/*.tex`
4. Compile: `./scripts/compile_tex.sh <file.tex>`

## Structure

```
input/          # Problem statements (markdown)
references/     # PDF context (gitignored)
MathSolver/     # Lean proofs
output/tex/     # LaTeX source
output/pdf/     # Compiled PDFs (gitignored)
```

## AI Context

When prompting AI, include:
- Problem from `input/`
- Relevant Mathlib imports
- Expected theorem signature with `sorry`
