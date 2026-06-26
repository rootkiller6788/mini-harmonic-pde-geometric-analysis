# Knowledge Graph — Mini Hyperbolic PDE

## L1: Core Definitions
- PDEType (hyperbolic/parabolic/elliptic classification)
- discriminant, classifyPDE
- WaveOperator1D, DAlembertian
- Characteristic1D (right/left-moving, slope, eval)
- Characteristic coordinates (ξ = x+ct, η = x-ct)
- Domain of dependence/influence, LightCone
- CauchyData1D, CauchyProblem1D
- BoundaryCondition, IBVP1D
- WaveOperatorND, HelmholtzOperator, KleinGordonOperator, TelegraphOperator
- VarCoeffWaveOp, HyperbolicMatrix2x2
- RiemannData, Hugoniot locus
- EntropyFunction, Kruzhkov entropy
- Rat auxiliary functions: ratAbs, ratSquare, ratMax, ratMin, ratSign

## L2: Core Concepts
- Energy: energyDensity, discreteEnergy
- Finite speed: finiteSpeedCheck, inInfluenceCone
- Huygens: HuygensType, huygensForDim
- Well-posedness: WellPosedResult
- Solution operators: dAlembertSolution, transportSolution
- Superposition, Duhamel principle
- ConservationLaw1D, ShockWave1D, rankineHugoniotSpeed
- Riemann invariants

## L3: Mathematical Structures
- Grid1D, SpacetimeGrid
- CFL: courantNumber, cflSatisfied
- DiscreteFunc, forwardDiff, backwardDiff, centralDiff
- waveFDStep, secondCentralDiff
- SymmetricHyperbolicSystem, DispersionRelation
- EnergyNormData, riemannInvariantRight/Left
- IsStrictlyHyperbolic, isTVD

## L4: Fundamental Theorems (55+ documented)
- theorem_dAlembertFormula, theorem_energyConservation
- theorem_finiteSpeed, theorem_existenceUniqueness
- theorem_huygens, theorem_kirchhoff, theorem_poisson
- theorem_strichartz, theorem_laxMilgram, theorem_laxEquivalence
- theorem_duhamel, theorem_cfl
- 10+ extended theorem statements (local existence, continuation, etc.)
- 7 detailed proof sketches

## L5: Proof Methods (9 documented)
- Method of Characteristics
- Energy estimates (continuous + discrete)
- Fourier/Spectral analysis
- Variational formulation
- Semigroup theory
- Weighted energy (Morawetz, conformal)
- Vector field method (Klainerman)
- Compensated compactness
- Parabolic regularization / vanishing viscosity

## L6: Canonical Examples (35+)
- Standing wave, traveling pulse
- d'Alembert: quadratic, cubic, constant data
- Transport: linear, quadratic, constant
- Wave Riemann problem
- Burgers shock, rarefaction fan, N-wave
- Reflection at Dirichlet/Neumann boundaries
- Gaussian pulse, smooth bump, hat function
- 10 solved examples with full details
- 7 example verification data entries

## L7: Applications (14 domains)
- Acoustics (impedance, SPL, Doppler, reverberation)
- Electromagnetism (Maxwell, Fresnel, skin depth, antennas)
- Seismology (P/S waves, reflection, Zoeppritz)
- Ocean waves (shallow/deep water, tsunami)
- Medical ultrasound (imaging modes, attenuation)
- Traffic flow (LWR, Greenshields)
- Financial PDEs (Black-Scholes)
- Quantum mechanics (Schrodinger, Dirac, Klein-Gordon)

## L8: Advanced Topics
- Nonlinear wave equations (null condition, global existence)
- Shock theory (Rankine-Hugoniot, Lax/Oleinik entropy)
- Einstein equations (harmonic gauge, ADM, Minkowski stability)
- Water waves (Zakharov, Benjamin-Ono, KP)
- Boundary control (HUM, observability)
- Numerical methods (FV, DG, ENO/WENO, SSP-RK)
- Error analysis (modified equation, dispersion)

## L9: Research Frontiers
- Cosmic censorship
- Onsager conjecture
- Landau damping
- Vlasov-Maxwell global existence
- Compressible Navier-Stokes
- Machine learning for PDEs (PINNs, neural operators)
- Quantum simulation of hyperbolic PDEs
- Exascale computing
- Digital twins
- Multiphysics coupling
