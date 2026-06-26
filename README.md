# Mini Harmonic PDE & Geometric Analysis

A collection of **from-scratch, zero-dependency Lean 4 formalizations** of harmonic functions, partial differential equations (elliptic/parabolic/hyperbolic), calculus of variations, nonlinear analysis, spectral theory, and geometric analysis. Each module maps to MIT and other top-tier university courses, bridging informal mathematics and formal proof by encoding textbook theorems as verified Lean 4 code.

## Sub-Modules

| Sub-Module | Topics | Key Courses |
|------|------|------|
| [mini-calculus-of-variations](mini-calculus-of-variations/) | Euler-Lagrange equation, discrete action principles, Hamiltonian mechanics, optimal control, gamma-convergence | MIT 18.701, Princeton MAT 520 |
| [mini-elliptic-pde](mini-elliptic-pde/) | Lax-Milgram theorem, maximum principles, regularity theory, variational methods, Poisson/Laplace equations | MIT 18.152, Stanford MATH 205 |
| [mini-geometric-analysis](mini-geometric-analysis/) | Riemannian metrics, curvature tensors, Ricci flow, comparison geometry, spectral geometry, Bochner technique | MIT 18.950, Princeton MAT 560 |
| [mini-harmonic-functions](mini-harmonic-functions/) | Mean value property, Perron's method, Dirichlet problem, potential theory, Harnack/Liouville theorems | MIT 18.152, Cambridge Part III |
| [mini-hyperbolic-pde](mini-hyperbolic-pde/) | Wave equation, d'Alembert formula, characteristics, energy conservation, CFL condition, Huygens principle | MIT 18.155, Stanford MATH 220 |
| [mini-nonlinear-analysis](mini-nonlinear-analysis/) | Banach/Picard fixed points, monotone operators, bifurcation theory, degree theory, variational methods | MIT 18.155, Princeton MAT 520 |
| [mini-parabolic-pde](mini-parabolic-pde/) | Heat equation, semigroup theory, maximum principles, diffusion processes, Ricci/mean curvature flow | MIT 18.152, ETH 401-3652 |
| [mini-spectral-theory-pde](mini-spectral-theory-pde/) | Eigenvalues/eigenfunctions, Rayleigh quotient, Courant-Fischer, spectral decomposition, Weyl's law | MIT 18.102, Stanford MATH 271 |

## Design Philosophy

- **Zero external dependencies** — pure Lean 4 kernel (`Init`, `Nat`, `Rat`, `List`, `Fin`), no Mathlib4, self-contained Lake build
- **Formal verification first** — every theorem is type-checked by the Lean kernel; core theorems carry machine-verified proofs (zero `sorry`)
- **Layered knowledge coverage** — each module progresses from L1 (definitions) through L9 (research frontiers) with clear pedagogical structure
- **Self-contained modules** — each sub-module has its own `lakefile.lean`, `docs/`, `examples/`, and course-alignment notes

## Building

Each module is standalone. Navigate to a module directory and run:

```bash
cd mini-calculus-of-variations
lake build                     # compile all modules
lake env lean --run Main.lean  # run entry point
```

Requires **Lean 4** (v4.7.0+) and **Lake** build system.

## Project Structure

```
mini-harmonic-pde-geometric-analysis/
├── mini-calculus-of-variations/   # Euler-Lagrange, discrete action, variational principles
├── mini-elliptic-pde/             # Elliptic PDE, Lax-Milgram, maximum principles, regularity
├── mini-geometric-analysis/       # Riemannian geometry, curvature, geometric flows, spectra
├── mini-harmonic-functions/       # Harmonic functions, mean value, Perron, potential theory
├── mini-hyperbolic-pde/           # Wave equation, characteristics, energy methods, conservation
├── mini-nonlinear-analysis/       # Fixed points, monotone operators, bifurcation, degree theory
├── mini-parabolic-pde/            # Heat equation, semigroups, diffusion, geometric evolution
└── mini-spectral-theory-pde/      # Spectral theory, eigenvalues, Courant-Fischer, eigenfunctions
```

## License

MIT
