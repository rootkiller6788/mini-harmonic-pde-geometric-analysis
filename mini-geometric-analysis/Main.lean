/-
# Main — mini-geometric-analysis entry point

Prints package information and runs basic #eval tests.
-/

import MiniGeometricAnalysis

open MiniGeometricAnalysis

def main : IO Unit := do
  IO.println "╔══════════════════════════════════════════════════╗"
  IO.println "║   mini-geometric-analysis                        ║"
  IO.println "║   sub-package of mini-harmonic-pde-geometric-    ║"
  IO.println "║   analysis                                      ║"
  IO.println "║   Lean 4 / Lake v4.7.0                          ║"
  IO.println "╚══════════════════════════════════════════════════╝"
  IO.println ""
  IO.println "=== Core Types ==="
  IO.println "  RiemannianMetric — g_ij symmetric positive-definite"
  IO.println "  ChristoffelSymbols — Γ^k_ij"
  IO.println "  RiemannCurvatureTensor — R^l_{ijk}"
  IO.println "  RicciCurvature — Ric_{ij}"
  IO.println "  ScalarCurvature — R"
  IO.println "  LaplaceBeltrami — Δ"
  IO.println ""
  IO.println "=== Geometric Objects ==="
  IO.println "  Geodesic — length-minimizing curves"
  IO.println "  JacobiField — geodesic variation"
  IO.println "  MinimalSurface — zero mean curvature"
  IO.println "  HarmonicMap — critical point of Dirichlet energy"
  IO.println ""
  IO.println "=== Key Theorems (Statements) ==="
  IO.println "  Gauss-Bonnet Theorem"
  IO.println "  Bonnet-Myers Theorem (Ric > 0 ⇒ compact)"
  IO.println "  Cartan-Hadamard Theorem (K ≤ 0 ⇒ Floatⁿ)"
  IO.println "  Bishop-Gromov Volume Comparison"
  IO.println "  Lichnerowicz Eigenvalue Bound"
  IO.println "  Synge's Theorem"
  IO.println "  Sphere Theorems (Berger-Klingenberg, Rauch)"
  IO.println "  Schoen-Yau Positive Mass Theorem"
  IO.println ""
  IO.println "=== Geometric Flows ==="
  IO.println "  Ricci Flow: ∂_t g = -2 Ric"
  IO.println "  Mean Curvature Flow: ∂_t F = H"
  IO.println "  Harmonic Map Heat Flow: ∂_t u = τ(u)"
  IO.println ""
  IO.println "=== Geometric Inequalities ==="
  IO.println "  Isoperimetric Inequality"
  IO.println "  Sobolev Inequality on Manifolds"
  IO.println "  Faber-Krahn Inequality"
  IO.println "  Cheeger Inequality"
  IO.println ""
  IO.println "=== Example Manifolds ==="
  IO.println "  Sphere S² (Gauss curvature K=1)"
  IO.println "  Hyperbolic plane H² (K=-1)"
  IO.println "  Flat torus T² (K=0)"
  IO.println "  Catenoid (minimal surface)"
  IO.println "  Helicoid (minimal surface)"
  IO.println ""
  IO.println "=== mini-geometric-analysis ready. ==="

-- Basic #eval tests
#eval "mini-geometric-analysis: package fully imported"
#eval s!"RiemannianMetric defined on Float² and Float³"
#eval s!"Christoffel symbols, curvature tensor, Ricci, scalar curvature"
#eval s!"Laplace-Beltrami operator Δ = div ∘ grad"
#eval s!"Gauss-Bonnet: ∫_M K dA = 2π χ(M) for surfaces"
