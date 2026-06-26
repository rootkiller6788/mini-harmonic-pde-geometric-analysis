# Knowledge Graph ¡ª mini-parabolic-pde

## L1: Definitions (Complete ?)

| Entity | File | Type | Description |
|--------|------|------|-------------|
| DiscreteParabolicOperator | Core/Basic | structure | Discrete parabolic operator on finite graph |
| DiscreteLaplacian1D | Core/Basic | structure | 1D discrete Laplacian with Dirichlet BC |
| SpaceTimeGrid | Core/Objects | structure | Space-time grid for discrete PDE |
| ParabolicCylinder | Core/Basic | structure | Space-time cylinder domain |
| EvolutionFamily | Core/Basic | structure | Two-parameter evolution family |
| EvolutionSemigroup | Core/Basic | structure | Autonomous evolution semigroup |
| GraphLaplacian | Core/Basic | structure | Combinatorial graph Laplacian |
| TimeGrid | Core/Basic | structure | Uniform time discretization |
| ParabolicIBVP | Core/Basic | structure | Complete initial-boundary value problem |
| randomWalkKernel | Core/Basic | def | Simple random walk transition probability |
| matrixPower | Core/Basic | def | Matrix power for discrete semigroup |
| explicitEulerStep | Core/Basic | def | Explicit Euler time step |
| matVecMul | Core/Basic | def | Matrix-vector multiplication |
| vecInner | Core/Basic | def | L2 inner product |
| SolutionOperator | Morphisms/Hom | structure | Abstract solution operator |
| TimeSliceDecomposition | Core/Objects | structure | Method of lines decomposition |

## L2: Core Concepts (Complete ?)

| Concept | File | Type | Description |
|---------|------|------|-------------|
| SubSolution | Constructions/Subobjects | def | Discrete sub-solution |
| SuperSolution | Constructions/Subobjects | def | Discrete super-solution |
| SolutionEquivalence | Morphisms/Equivalence | def | Equivalence of solutions |
| Positivity preservation | Properties/Preservation | theorem | Nonnegativity preserved |
| Max norm decay | Properties/Invariants | theorem | Maximum norm non-increasing |
| Energy Dirichlet | Properties/Invariants | def | Dirichlet energy functional |
| Total mass | Properties/Invariants | def | Conserved total mass |
| Petrovsky condition | Properties/ClassificationData | def | Parabolicity condition |
| ConsistencyOrder | Morphisms/Equivalence | structure | Numerical scheme consistency |
| isStableScheme | Morphisms/Equivalence | def | Numerical stability |

## L3: Math Structures (Complete ?)

| Structure | File | Type | Description |
|-----------|------|------|-------------|
| EvolutionTriple | Core/Basic | structure | Gelfand triple V?H?V' |
| ProductDomain | Constructions/Products | structure | Product spatial domain |
| productLaplacian | Constructions/Products | def | Laplacian on product domain |
| kroneckerProduct | Constructions/Products | def | Kronecker product of matrices |
| PeriodicGrid | Constructions/Quotients | structure | Periodic grid data |
| SymmetryGroup | Constructions/Quotients | structure | Symmetry group for reduction |
| FractionalLaplacian | Properties/ClassificationData | structure | Fractional Laplacian data |
| BellmanEquation | Properties/ClassificationData | structure | Bellman fully nonlinear equation |
| FullyNonlinearParabolic | Properties/ClassificationData | structure | Fully nonlinear parabolic |
| DegenerateParabolic | Properties/ClassificationData | structure | Degenerate parabolic structure |
| ParabolicSystem | Properties/ClassificationData | structure | System of parabolic equations |
| ConservedQuantity | Properties/Invariants | inductive | Types of conserved quantities |
| Barrier | Constructions/Subobjects | structure | Upper/lower barrier pair |
| ParabolicScaling | Morphisms/Iso | structure | Parabolic scaling transform |
| SeparatedSolution | Constructions/Products | structure | Separation of variables data |

## L4: Fundamental Theorems (Complete ?)

| Theorem | File | Status | Description |
|---------|------|--------|-------------|
| Weak maximum principle | Theorems/UniversalProperties | Proved | sup norm non-increasing |
| Comparison principle | Theorems/UniversalProperties | Axiom | Order preservation |
| Harnack inequality | Theorems/UniversalProperties | Axiom | sup/inf bound ratio |
| ABP estimate | Theorems/UniversalProperties | Axiom | Alexandrov-Bakelman-Pucci |
| Carleman estimate | Theorems/UniversalProperties | Axiom | Weighted L2 estimates |
| Li-Yau gradient estimate | Theorems/UniversalProperties | Axiom | Differential Harnack |
| Nash-Moser iteration | Theorems/Main | Axiom | L2¡úL¡Þ bounds |
| De Giorgi regularity | Theorems/Main | Axiom | Holder continuity |
| Aronson Gaussian bounds | Theorems/Main | Axiom | Two-sided kernel bounds |
| Krylov-Safonov | Theorems/Main | Axiom | Nondivergence Harnack |
| Exponential convergence | Theorems/Main | Axiom | Rate ¦Ë? decay to equilibrium |
| Lax equivalence | Morphisms/Equivalence | Axiom | Stability ? Convergence |
| Fourier law | Bridges/ToPhysics | Axiom | Heat conduction equation |
| Feynman-Kac formula | Bridges/ToPhysics | Axiom | Probabilistic representation |

## L5: Proof Techniques (Complete ?)

| Technique | Applied In | Example |
|-----------|------------|---------|
| Fin induction | Theorems/Basic | Uniqueness proof |
| nlinarith | Properties/Invariants | Max norm decay |
| Finset.sum_le_sum | Properties/Preservation | Positivity proof |
| le_antisymm | Constructions/Subobjects | Sub+super = solution |
| Finset.sup'_le | Theorems/UniversalProperties | Weak max principle |
| Induction on time steps | Multiple files | Evolution proofs |
| calc chains | Theorems/UniversalProperties | Maximum norm chain |
| Finset.sum_congr | Theorems/Basic | Sum equivalence |
| Ext/Iff introduction | Morphisms/Equivalence | Equivalence proofs |
| Omega for bounds | Multiple files | Index arithmetic |

## L6: Canonical Examples (Complete ?)

| Example | File | #eval | Description |
|---------|------|-------|-------------|
| 1D heat equation | Examples/Standard | Yes | sin(¦Ðx) exp(-¦Ð2t) |
| Gaussian kernel | Examples/Standard | Yes | Fundamental solution |
| Black-Scholes | Examples/Standard | No | Option pricing PDE |
| Fokker-Planck | Examples/Standard | No | Brownian motion with drift |
| Fourier series | Examples/Standard | No | Separation of variables |
| Random walk kernel | Examples/Standard | Yes | Binomial transition prob |
| Explicit Euler grid | Examples/Standard | Yes | Small grid solve |
| Max principle test | Examples/Standard | Yes | Bound check |
| Backward heat | Examples/Counterexamples | Yes | Hadamard instability |
| Non-uniqueness | Examples/Counterexamples | No | Degenerate case |
| Fujita blowup | Examples/Counterexamples | No | Supercritical exponent |
| Discontinuous initial | Examples/Counterexamples | No | Instant smoothing |
| Infinite speed | Examples/Counterexamples | No | Linear vs nonlinear |

## L7: Applications (Complete ? ¡ª 4 directions)

| Application | File | Coverage |
|-------------|------|----------|
| **Analysis** | Bridges/ToAnalysis | Semigroups, fractional powers, maximal regularity, ultracontractivity, Sobolev embedding, Riesz-Thorin, Dunford-Pettis |
| **Geometry** | Bridges/ToGeometry | Ricci flow, MCF, Yamabe, Calabi, Kahler-Ricci, Willmore, harmonic map, Gauss curvature, Lagrangian MCF, inverse MCF |
| **Physics** | Bridges/ToPhysics | Fourier/Fick laws, Brownian, Navier-Stokes, Turing, phase field, Keller-Segel, Fisher-KPP, Ginzburg-Landau, thin film, Smoluchowski |
| **Computation** | Bridges/ToComputation | FD, FEM, spectral, ADI, ETD, DG, parareal, multigrid, POD, space-time FEM |

## L8: Advanced Topics (Partial+ ?)

| Topic | File | Status |
|-------|------|--------|
| Nash-Moser iteration | Theorems/Main | Axiom stated |
| De Giorgi regularity | Theorems/Main | Axiom stated |
| Krylov-Safonov theory | Theorems/Main | Axiom stated |
| Perelman entropy | Bridges/ToGeometry | Axiom stated |
| Parametrix method | Constructions/Universal | Axiom stated |
| Fractional parabolic | Properties/ClassificationData | Axiom stated |
| Moser-Trudinger (parabolic) | Theorems/Main | Axiom stated |

## L9: Research Frontiers (Partial ? ¡ª documented)

| Topic | Location | Status |
|-------|----------|--------|
| YTD conjecture | Bridges/ToGeometry | Documented |
| Cercignani conjecture | Properties/Invariants | Documented |
| Otto calculus | Properties/Invariants | Documented |
| Lagrangian MCF | Bridges/ToGeometry | Documented |
| Vazquez-Zuazua asymptotics | Theorems/Main | Documented |
| Parareal algorithm | Bridges/ToComputation | Documented |
| Caffarelli-Kohn-Nirenberg | Theorems/Main | Documented |
