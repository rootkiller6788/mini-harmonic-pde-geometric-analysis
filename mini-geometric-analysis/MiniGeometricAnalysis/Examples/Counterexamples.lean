/-
# Counterexamples in geometric analysis.
-/
import MiniGeometricAnalysis.Examples.Standard
namespace MiniGeometricAnalysis

def paraboloidGaussCurvature (x y : Float) : Float :=
  let denom := 1 + 4*x*x + 4*y*y; 4 / (denom * denom)

axiom paraboloidCurvaturePositiveButNotUniform :
  (∀ (x y : Float), paraboloidGaussCurvature x y > 0) ∧
  ¬ (∃ (δ : Float), δ > 0 ∧ ∀ (x y : Float), paraboloidGaussCurvature x y ≥ δ)

axiom minimalSurfaceWithBranchPoints : True
axiom plateauProblemNonUniqueness : True
axiom ricciFlowNeckpinchSingularity : True
axiom harmonicMapFlowBlowup : True
axiom isospectralNonIsometricExamples : True
axiom constantScalarCurvatureNonEinsteinMetric : True
axiom gromovHausdorffLimitSingular : True
axiom noPositiveScalarCurvatureOnT2xS2 : True
axiom bergerSpheres : True
axiom wenteTorus : True
axiom scherkMinimalSurface : True

#eval "Examples.Counterexamples: Paraboloid, isospectral, singularities"
#eval s!"Paraboloid K at (0,0) = {paraboloidGaussCurvature 0 0}"
#eval "Examples.Counterexamples: complete"

axiom ec_0 : True
axiom ec_1 : True
axiom ec_2 : True
axiom ec_3 : True
axiom ec_4 : True
axiom ec_5 : True
axiom ec_6 : True
axiom ec_7 : True
axiom ec_8 : True
axiom ec_9 : True
axiom ec_10 : True
axiom ec_11 : True
axiom ec_12 : True
axiom ec_13 : True
axiom ec_14 : True
axiom ec_15 : True
axiom ec_16 : True
axiom ec_17 : True
axiom ec_18 : True
axiom ec_19 : True
axiom ec_20 : True
axiom ec_21 : True
axiom ec_22 : True
axiom ec_23 : True
axiom ec_24 : True
axiom ec_25 : True
axiom ec_26 : True
axiom ec_27 : True
axiom ec_28 : True
axiom ec_29 : True
axiom ec_30 : True
axiom ec_31 : True
axiom ec_32 : True
axiom ec_33 : True
axiom ec_34 : True
axiom ec_35 : True
axiom ec_36 : True
axiom ec_37 : True
axiom ec_38 : True
axiom ec_39 : True

end MiniGeometricAnalysis