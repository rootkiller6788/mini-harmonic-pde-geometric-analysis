# Course Tree — mini-geometric-analysis

## Prerequisites
- Real analysis (sequences, limits, continuity)
- Linear algebra (bilinear forms, matrices)
- Multivariable calculus (partial derivatives, gradients)
- Basic topology (metric spaces, compactness)

## Internal Dependencies
```
Core/Basic.lean
  ├── Core/Objects.lean
  │     └── Core/Laws.lean
  │           └── Morphisms/Hom.lean
  │                 └── Morphisms/Iso.lean
  │                       └── Morphisms/Equiv.lean
  │                             └── Constructions/Products.lean
  │                                   └── Constructions/Quotients.lean
  │                                         └── Constructions/Subobjects.lean
  │                                               └── Constructions/Universal.lean
  │                                                     └── Properties/ClassificationData.lean
  │                                                           └── Properties/Invariants.lean
  │                                                                 └── Properties/Preservation.lean
  │                                                                       └── Theorems/Basic.lean
  │                                                                             └── Theorems/Classification.lean
  │                                                                                   └── Theorems/Main.lean
  │                                                                                         └── Theorems/UniversalProperties.lean
  │                                                                                               └── Examples/Standard.lean
  │                                                                                                     └── Examples/Counterexamples.lean
  │                                                                                                           └── Bridges/ToPhysics.lean
  │                                                                                                                 └── Bridges/ToAlgebra.lean
  │                                                                                                                       └── Bridges/ToTopology.lean
  │                                                                                                                             └── Bridges/ToComputation.lean
```

## External Dependencies
- `mini-object-kernel`: Provides Object typeclass and TheoryName
