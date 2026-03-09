# AI Agent Instructions

## Project Overview
Lean 4 + Mathlib4 project for formalizing physics proofs with LaTeX output.

## Workflow Command

When asked to formalize a proof, follow these steps:

### Step 1: Read Problem
Read the problem statement from `input/<name>.md`

### Step 2: Create Lean Proof
Create `MathSolver/<Category>/<Name>.lean`:
- Import required Mathlib modules
- Define necessary types/structures
- State theorem with full type signatures
- Prove using Lean 4 tactics
- Add the import to `MathSolver.lean`

### Step 3: Verify Build
```bash
lake build
```
Fix any errors until build succeeds.

### Step 4: Generate LaTeX
Create `output/tex/<name>.tex` with:
- Problem statement in natural language
- Mathematical formulation (LaTeX equations)
- Lean code listing
- Proof explanation

### Step 5: Compile PDF
```bash
./scripts/compile_tex.sh output/tex/<name>.tex
```

### Step 6: Commit
```bash
git add -A && git commit -m "Formalize: <theorem name>"
```

---

## Quick Prompt Template

Copy and use this:

```
Read `input/<PROBLEM>.md` and:
1. Create Lean proof in `MathSolver/<NAME>.lean`
2. Run `lake build` to verify
3. Generate `output/tex/<NAME>.tex` with theorem + Lean code
4. Compile with `./scripts/compile_tex.sh output/tex/<NAME>.tex`
5. Commit changes
```

---

## Lean 4 Reference

### Common Tactics
- `simp` - simplification
- `ring` - polynomial arithmetic  
- `linarith` - linear arithmetic
- `nlinarith` - nonlinear arithmetic
- `exact?` / `apply?` - find matching lemma
- `rw [h]` - rewrite using hypothesis
- `intro` - introduce hypothesis
- `have` - intermediate goal
- `calc` - calculation chain

### Useful Mathlib Imports
```lean
import Mathlib.Analysis.InnerProductSpace.Basic  -- vectors, dot product
import Mathlib.Analysis.Calculus.Deriv.Basic     -- derivatives
import Mathlib.Analysis.Calculus.Integral.Basic  -- integrals
import Mathlib.LinearAlgebra.Matrix.Basic        -- matrices
import Mathlib.Topology.MetricSpace.Basic        -- metric spaces
```

### Theorem Template
```lean
/-- Natural language description -/
theorem theorem_name
    (x : ℝ) (v : ℝ → ℝ³)  -- parameters with types
    (h : condition) :      -- hypotheses
    conclusion := by       -- goal
  tactic_proof
```

---

## LaTeX Template Structure

```latex
\section{Problem Statement}
% Natural language from input/*.md

\section{Mathematical Formulation}
\begin{theorem}[Name]
% LaTeX equations
\end{theorem}

\section{Lean Formalization}
\begin{lstlisting}
% Lean code
\end{lstlisting}

\section{Proof Explanation}
% Step-by-step reasoning
```

---

## File Structure
```
input/           → Problem statements (you write)
MathSolver/      → Lean proofs (AI generates)
output/tex/      → LaTeX source (AI generates)
output/pdf/      → Compiled PDFs (script generates)
```
