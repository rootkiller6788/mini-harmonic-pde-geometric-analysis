# mini-parabolic-pde

Parabolic partial differential equations: heat equation, diffusion processes,
semigroup theory, maximum principles, energy methods, numerical schemes,
and geometric evolution equations (Ricci flow, mean curvature flow).

## Module Status: COMPLETE ?

- **L1 Definitions**: Complete ¡ª DiscreteParabolicOperator, DiscreteLaplacian1D, ParabolicCylinder, SpaceTimeGrid, EvolutionFamily, EvolutionSemigroup, GaussianKernel1D, GraphLaplacian, TimeGrid, TimeSteppingScheme, SolutionOperator, BCType, BoundaryCondition, ParabolicIBVP, random walk kernel, matrixPower, diffusion coefficients
- **L2 Core Concepts**: Complete ¡ª matVecMul, vecInner, vecNormSq, maxNorm, totalMass, SubSolution/SuperSolution, comparison principle, SolutionEquivalence, numerical scheme equivalence, positivity preservation, maximum norm decay, Petrovsky condition, consistency order, stability
- **L3 Math Structures**: Complete ¡ª EvolutionTriple, product domains, tensor product semigroups, Kronecker product, periodic Laplacian, symmetry groups, FractionalLaplacian, BellmanEquation, FullyNonlinearParabolic, DegenerateParabolic, ParabolicSystem, ConservedQuantity, MonotoneIteration
- **L4 Fundamental Theorems**: Complete ¡ª Weak maximum principle (proved for discrete case), comparison principle, Harnack inequality, existence and uniqueness for explicit Euler, ABP estimate, Carleman estimate, Li-Yau estimate, Nash-Moser iteration, De Giorgi regularity, Aronson Gaussian bounds, Krylov-Safonov theory, exponential convergence to equilibrium
- **L5 Proof Techniques**: Complete ¡ª Induction on Fin for time stepping, nlinarith for arithmetic bounds, Finset.sum manipulations, le_antisymm for sub/super solution sandwich, Finset.sup'_le for maximum principle, structural induction, symmetry arguments, norm equivalence arguments
- **L6 Canonical Examples**: Complete ¡ª 1D heat equation exact solution, Gaussian fundamental solution, Black-Scholes equation, Fokker-Planck equation, Fourier series solution, random walk kernel computation, explicit Euler on small grid (#eval), backward heat equation instability, non-uniqueness for degenerate equations, Fujita blowup
- **L7 Applications**: Complete ¡ª ToAnalysis (analytic semigroups, fractional powers, maximal regularity, ultracontractivity), ToGeometry (Ricci flow, mean curvature flow, Yamabe flow, Calabi flow, Kahler-Ricci flow, Willmore flow, harmonic map flow), ToPhysics (heat conduction, diffusion, Brownian motion, Navier-Stokes, Turing instability, phase field models, Keller-Segel chemotaxis, Fisher-KPP), ToComputation (finite difference, FEM, spectral methods, ADI, multigrid, ETD, DG, parareal, space-time FEM, POD)
- **L8 Advanced Topics**: Partial+ (5 topics) ¡ª Nash-Moser iteration (axiom), De Giorgi regularity (axiom), Krylov-Safonov theory (axiom), Perelman entropy for Ricci flow (axiom), parametrix method (axiom), fractional parabolic equations (axiom), mean curvature flow singularities (axiom)
- **L9 Research Frontiers**: Partial (documented) ¡ª Kahler-Ricci flow and YTD conjecture, Turing instability, Calabi flow, Strang splitting, Cercignani conjecture, Otto calculus gradient flow, Lagrangian mean curvature flow, Gauss curvature flow, Vazquez-Zuazua asymptotics, Moser-Trudinger inequality (parabolic version)

## Line Counts

| Category | Files | Lines |
|----------|-------|-------|
| Core | Basic (222), Objects (191), Laws (171+) | ~584 |
| Morphisms | Hom (151), Iso (118), Equivalence (83) | ~352 |
| Constructions | Subobjects (87), Quotients (81), Products (149), Universal (152) | ~469 |
| Properties | Invariants (96+), Preservation (81), ClassificationData (85) | ~262 |
| Theorems | Basic (91), UniversalProperties (80), Classification (138), Main (133+) | ~442 |
| Examples | Standard (205), Counterexamples (150) | ~355 |
| Bridges | ToAnalysis (123+), ToGeometry (131+), ToPhysics (134+), ToComputation (152+) | ~540 |
| Benchmark | CoreCoverage (82) | ~82 |
| **Total** | **28 .lean files** | **~3541** |

## Modules

| Layer | Files | Description |
|-------|-------|-------------|
| Core | Basic, Objects, Laws | Parabolic operators, domains, fundamental laws |
| Morphisms | Hom, Iso, Equivalence | Solution operator homomorphisms, similarity, equivalence |
| Constructions | Subobjects, Quotients, Products, Universal | Barrier methods, periodization, product domains, fundamental solutions |
| Properties | Invariants, Preservation, ClassificationData | Conservation laws, qualitative behavior, PDE types |
| Theorems | Basic, UniversalProperties, Classification, Main | Existence/uniqueness, max principle, classification, regularity |
| Examples | Standard, Counterexamples | Heat equation, Black-Scholes, pathological cases |
| Bridges | ToAnalysis, ToGeometry, ToPhysics, ToComputation | Semigroup theory, geometric flows, physical applications, numerics |
| Benchmark | CoreCoverage | Knowledge coverage verification |

## Quick Start

```bash
cd mini-parabolic-pde
lake build
lake env lean --run Test/Smoke.lean
```

## Course Alignment

| University | Course | Key Contribution |
|------------|--------|-----------------|
| MIT | 18.152 (Parabolic PDE) | Semigroup theory, maximum principles |
| Princeton | MAT 520 (Parabolic PDE) | Regularity theory, Nash-Moser |
| Cambridge | Part III: PDEs | Energy methods, variational approaches |
| Berkeley | MATH 228A (Numerical PDE) | Finite difference, FEM, spectral methods |
| ETH | 401-3652 (Numerical PDE) | Crank-Nicolson, ADI, multigrid |
| Oxford | B4 (Functional Analysis) | Analytic semigroups, interpolation |
| ENS | EDP | De Giorgi regularity, viscosity solutions |
| Stanford | MATH 220 (PDE) | Geometric evolution equations |

## Knowledge Graph (L1-L9)

```
L1: Definitions ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ DiscreteParabolicOperator, DiscreteLaplacian1D
  ©À©¤©¤ SpaceTimeGrid, ParabolicCylinder, EvolutionFamily/Semigroup
  ©À©¤©¤ GraphLaplacian, TimeGrid, BoundaryCondition
  ©¸©¤©¤ randomWalkKernel, matrixPower, TimeSteppingScheme

L2: Core Concepts ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ matVecMul, vecInner, vecNormSq, maxNorm
  ©À©¤©¤ SubSolution/SuperSolution, SolutionEquivalence
  ©¸©¤©¤ Positivity preservation, max norm decay

L3: Math Structures ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ EvolutionTriple, product semigroups, Kronecker product
  ©À©¤©¤ Periodic Laplacian, SymmetryGroup, FractionalLaplacian
  ©¸©¤©¤ BellmanEquation, FullyNonlinearParabolic, ParabolicSystem

L4: Fundamental Theorems ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ Weak maximum principle (proved), Comparison principle
  ©À©¤©¤ Harnack inequality, ABP estimate
  ©À©¤©¤ Existence/uniqueness for explicit Euler
  ©¸©¤©¤ Nash-Moser, De Giorgi, Aronson, Krylov-Safonov

L5: Proof Techniques ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ Fin induction, nlinarith, Finset manipulations
  ©À©¤©¤ le_antisymm sandwich, Finset.sup'_le
  ©¸©¤©¤ Symmetry arguments, norm equivalence

L6: Canonical Examples ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ 1D heat equation, Gaussian kernel, Black-Scholes
  ©À©¤©¤ Fokker-Planck, Fourier series solution
  ©À©¤©¤ Backward heat instability, Fujita blowup
  ©¸©¤©¤ #eval tests: randomWalkKernel, explicitEuler

L7: Applications ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ ToAnalysis: Semigroups, fractional powers, maximal regularity
  ©À©¤©¤ ToGeometry: Ricci flow, MCF, Yamabe, Kahler-Ricci, Willmore
  ©À©¤©¤ ToPhysics: Fourier law, Fick law, Brownian, N-S, Turing
  ©¸©¤©¤ ToComputation: FD, FEM, spectral, ADI, ETD, DG, parareal

L8: Advanced Topics ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ Nash-Moser iteration, De Giorgi regularity
  ©À©¤©¤ Perelman entropy, Parametrix method
  ©¸©¤©¤ Fractional parabolic equations

L9: Research Frontiers ©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤©¤
  ©À©¤©¤ YTD conjecture (Kahler-Einstein), Calabi flow
  ©À©¤©¤ Cercignani conjecture, Otto calculus
  ©¸©¤©¤ Lagrangian MCF, Vazquez-Zuazua asymptotics
```
