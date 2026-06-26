# Gap Report — mini-geometric-analysis

## Current Gaps
1. Float arithmetic: No Decidable instance for Float equality, so all arithmetic proofs are axioms. A future improvement would be to use a custom Real type with Decidable equality.
2. 3D geometry: Metric3D is defined but most theorems are for 2D. Full 3D Riemannian geometry would need expansion.
3. PDE theory: Geometric PDEs (elliptic, parabolic) are stated as axioms without analytic proofs.
4. Measure theory: Integrals, volumes, and isoperimetric inequalities lack measure-theoretic foundations.

## Priority Improvements
- High: Add DecidableEq wrapper for Float to enable computational proofs
- Medium: Expand 3D geometric structures and theorems
- Medium: Add basic PDE theory (elliptic regularity, maximum principle proofs)
- Low: Build measure theory foundation for integrals on manifolds
