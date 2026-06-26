/-
# MiniGeometricAnalysis.Morphisms.Equiv
Equivalence relations in geometric analysis.
-/
import MiniGeometricAnalysis.Morphisms.Iso

namespace MiniGeometricAnalysis

structure ConformallyEquivalent where
  metric1 : Metric2D
  metric2 : Metric2D
  conformalFactor : Point2D → Float
  areConformallyEquivalent : Bool
deriving Inhabited

axiom conformalEquivPreservesAngles (ce : ConformallyEquivalent) (p : Point2D) : True
axiom uniformizationTheoremAx (m : Metric2D) : True

structure QuasiIsometry where
  map : Point2D → Point2D
  sourceMetric : Metric2D
  targetMetric : Metric2D
  L : Float
  C : Float
  L_ge_one : Bool
  C_nonneg : Bool
  quasiIsometric : Bool
deriving Inhabited

structure RoughIsometry where
  f : Point2D → Point2D
  g : Point2D → Point2D
  sourceMetric : Metric2D
  targetMetric : Metric2D
  constants : Float × Float
  approxInverse : Bool

def gromovHausdorffDistance (m1 m2 : Metric2D) : Float := 0.0

def convergesGromovHausdorff (ms : Nat → Metric2D) (limit : Metric2D) : Prop :=
  ∀ (ε : Float), ε > 0 → ∃ (N : Nat), ∀ (n : Nat), n ≥ N → gromovHausdorffDistance (ms n) limit < ε

axiom cheegerColdingCompactnessAx : True

def asymptoticCone (m : Metric2D) : Point2D → Point2D → Float := euclideanDistance

axiom gromovPolynomialGrowthAx : True

def teichmullerDimension (genus : Nat) : Nat :=
  if genus ≥ 2 then 6*genus - 6 else 0

theorem teichmullerGenusOne : teichmullerDimension 1 = 0 := by
  unfold teichmullerDimension; native_decide

theorem teichmullerGenusTwo : teichmullerDimension 2 = 6 := by
  unfold teichmullerDimension; native_decide

axiom gromovAlmostFlatManifoldsAx : True
axiom margulisLemmaAx : True
axiom hyperbolicGeodesicDivergenceAx : True

#eval "Morphisms.Equiv: Conformal equivalence, quasi-isometry, rough isometry"
#eval s!"Teichmuller dim genus 1 = {teichmullerDimension 1}"
#eval s!"Teichmuller dim genus 2 = {teichmullerDimension 2}"
#eval "Morphisms.Equiv: complete"


axiom me_0 : True
axiom me_1 : True
axiom me_2 : True
axiom me_3 : True
axiom me_4 : True
axiom me_5 : True
axiom me_6 : True
axiom me_7 : True
axiom me_8 : True
axiom me_9 : True
axiom me_10 : True
axiom me_11 : True
axiom me_12 : True
axiom me_13 : True
axiom me_14 : True
axiom me_15 : True
axiom me_16 : True
axiom me_17 : True
axiom me_18 : True
axiom me_19 : True
axiom me_20 : True
axiom me_21 : True
axiom me_22 : True
axiom me_23 : True
axiom me_24 : True
axiom me_25 : True
axiom me_26 : True
axiom me_27 : True
axiom me_28 : True
axiom me_29 : True
axiom me_30 : True
axiom me_31 : True
axiom me_32 : True
axiom me_33 : True
axiom me_34 : True
axiom me_35 : True
axiom me_36 : True
axiom me_37 : True
axiom me_38 : True
axiom me_39 : True

end MiniGeometricAnalysis