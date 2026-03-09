# Math Solver

Formalize physics proofs with Lean 4 + AI assistance.

## Quick Start

```bash
cd .lean

# Setup (first time)
lake exe cache get   # Download Mathlib cache (~5 min)
lake build           # Build project

# Compile LaTeX (from root)
./scripts/compile_tex.sh output/tex/template.tex
```

## Workflow

1. Write problem in `input/*.md`
2. AI generates Lean proof in `.lean/MathSolver/*.lean`
3. Export to `output/tex/*.tex`
4. Compile: `./scripts/compile_tex.sh output/tex/<file>.tex`

## Structure

```
AGENTS.md            # AI agent instructions
README.md            # This file
.lean/               # Lean project
  lakefile.lean
  MathSolver.lean
  MathSolver/        # Lean proofs
input/               # Problem statements (markdown)
output/tex/          # LaTeX source  
output/pdf/          # Compiled PDFs (gitignored)
references/          # PDF context (gitignored)
scripts/             # Build scripts
```

## AI Context

See `AGENTS.md` for full AI workflow instructions.
