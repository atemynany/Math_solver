# Problem Template

## Title
[Problem Name]

## Physics Context
[Describe the physical system, relevant laws, and assumptions]

## Given
- List known quantities
- Initial conditions
- Constraints

## To Prove
[State what needs to be formalized/proven]

## Hints for AI
- Relevant Mathlib modules: `Mathlib.Analysis...`
- Key tactics: `simp`, `ring`, `linarith`
- Similar theorems to reference

## References
- [Link to PDF in references/ folder if applicable]
- [External references]

---

## Example: Conservation of Momentum

### Physics Context
In a closed system with no external forces, total momentum is conserved.

### Given
- Two particles with masses m₁, m₂
- Initial velocities v₁, v₂
- Final velocities v₁', v₂'
- No external forces

### To Prove
m₁ * v₁ + m₂ * v₂ = m₁ * v₁' + m₂ * v₂'

### Hints for AI
- Use `Mathlib.Algebra.Group.Basic` for additive structure
- Tactic: `ring` for algebraic manipulation
