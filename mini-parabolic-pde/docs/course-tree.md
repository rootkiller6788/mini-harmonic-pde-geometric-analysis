# Course Tree ¡ª mini-parabolic-pde

## Prerequisite Dependencies

```
mini-parabolic-pde
©À©¤©¤ mini-real-analysis (Real numbers, limits, continuity)
©¦   ©À©¤©¤ mini-real-numbers
©¦   ©À©¤©¤ mini-sequence-series
©¦   ©¸©¤©¤ mini-continuity
©À©¤©¤ mini-linear-multilinear-algebra (Matrices, eigenvalues, inner products)
©¦   ©À©¤©¤ mini-vectors
©¦   ©¸©¤©¤ mini-matrices
©À©¤©¤ mini-functional-analysis-operator (Semigroups, Sobolev spaces)
©¦   ©¸©¤©¤ mini-operator-theory
©À©¤©¤ mini-elliptic-pde (Stationary problems, Laplacian theory)
©¦   ©¸©¤©¤ mini-harmonic-functions
©¸©¤©¤ mini-geometric-analysis (Ricci flow, geometric flows)
    ©¸©¤©¤ mini-riemannian-geometry
```

## Internal Dependency Tree

```
Core/Basic (no deps)
©À©¤©¤ Core/Objects ¡ú Core/Basic
©À©¤©¤ Core/Laws ¡ú Core/Basic, Core/Objects
©À©¤©¤ Morphisms/Hom ¡ú Core/Basic
©À©¤©¤ Morphisms/Iso ¡ú Core/Basic
©À©¤©¤ Morphisms/Equivalence ¡ú Core/Basic
©À©¤©¤ Constructions/Subobjects ¡ú Core/Basic
©À©¤©¤ Constructions/Quotients ¡ú Core/Basic
©À©¤©¤ Constructions/Products ¡ú Core/Basic
©À©¤©¤ Constructions/Universal ¡ú Core/Basic
©À©¤©¤ Properties/Invariants ¡ú Core/Basic
©À©¤©¤ Properties/Preservation ¡ú Core/Basic
©À©¤©¤ Properties/ClassificationData ¡ú Core/Basic
©À©¤©¤ Theorems/Basic ¡ú Core/Basic
©À©¤©¤ Theorems/UniversalProperties ¡ú Core/Basic, Core/Laws
©À©¤©¤ Theorems/Classification ¡ú Core/Basic
©À©¤©¤ Theorems/Main ¡ú Core/Basic, Core/Laws
©À©¤©¤ Examples/Standard ¡ú Core/Basic, Core/Objects
©À©¤©¤ Examples/Counterexamples ¡ú Core/Basic
©À©¤©¤ Bridges/ToAnalysis ¡ú Core/Basic
©À©¤©¤ Bridges/ToGeometry ¡ú Core/Basic
©À©¤©¤ Bridges/ToPhysics ¡ú Core/Basic
©À©¤©¤ Bridges/ToComputation ¡ú Core/Basic
©¸©¤©¤ Benchmark/CoreCoverage ¡ú MiniParabolicPDE (all)
```

## Recommended Study Order

1. Core/Basic: Fundamental definitions
2. Core/Objects: Domains and function spaces
3. Core/Laws: Conservation laws and principles
4. Properties/Invariants, Preservation, ClassificationData
5. Theorems/Basic, UniversalProperties, Classification, Main
6. Constructions (Subobjects, Quotients, Products, Universal)
7. Morphisms (Hom, Iso, Equivalence)
8. Examples (Standard, Counterexamples)
9. Bridges (ToAnalysis, ToGeometry, ToPhysics, ToComputation)
10. Benchmark/CoreCoverage
