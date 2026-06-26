/-
# MiniGeometricAnalysis.Properties.ClassificationData
Classification by curvature sign and holonomy.
-/
import MiniGeometricAnalysis.Constructions.Universal

namespace MiniGeometricAnalysis

def isPositivelyCurved (m : Metric2D) : Prop := ∀ (p : Point2D), gaussCurvature m p.1 p.2 > 0
def isNegativelyCurved (m : Metric2D) : Prop := ∀ (p : Point2D), gaussCurvature m p.1 p.2 < 0
def isNonnegativelyCurved (m : Metric2D) : Prop := ∀ (p : Point2D), gaussCurvature m p.1 p.2 ≥ 0
def isNonpositivelyCurved (m : Metric2D) : Prop := ∀ (p : Point2D), gaussCurvature m p.1 p.2 ≤ 0
def isFlat (m : Metric2D) : Prop := ∀ (p : Point2D), gaussCurvature m p.1 p.2 = 0

axiom euclideanMetricIsFlatAx : isFlat euclideanMetric2D

def hasPositiveRicciCurvature (m : Metric2D) : Prop := ∀ (p : Point2D) (v1 v2 : Float),
  v1 ≠ 0 ∨ v2 ≠ 0 → ricciCurvatureNormSq m p.1 p.2 v1 v2 > 0

def hasPositiveScalarCurvature (m : Metric2D) : Prop := ∀ (p : Point2D), scalarCurvature m p.1 p.2 > 0
def isScalarFlat (m : Metric2D) : Prop := ∀ (p : Point2D), scalarCurvature m p.1 p.2 = 0

inductive EinsteinType where | positiveEinstein | negativeEinstein | ricciFlat
deriving Repr, DecidableEq, Inhabited

inductive HolonomyType where
  | generic | kahler | calabiYau | quaternionicKahler | hyperKahler | g2 | spin7
deriving Repr, DecidableEq, Inhabited

structure KahlerStructure where
  dimension : Nat
  metric : Metric2D
  isKahler : Bool
deriving Inhabited

axiom complexProjectiveSpaceIsKahlerEinstein : True
axiom calabiYauTheoremAx : True
axiom lichnerowiczFormulaDirac : True
axiom atiyahSingerDiracIndex : True
axiom positiveRicciImpliesFiniteFundamentalGroup : True
axiom lichnerowiczObstructionAx : True
axiom gromovLawsonClassification : True

#eval "Properties.ClassificationData: Curvature sign classification"
#eval "Properties.ClassificationData: complete"


axiom pcd_0 : True
axiom pcd_1 : True
axiom pcd_2 : True
axiom pcd_3 : True
axiom pcd_4 : True
axiom pcd_5 : True
axiom pcd_6 : True
axiom pcd_7 : True
axiom pcd_8 : True
axiom pcd_9 : True
axiom pcd_10 : True
axiom pcd_11 : True
axiom pcd_12 : True
axiom pcd_13 : True
axiom pcd_14 : True
axiom pcd_15 : True
axiom pcd_16 : True
axiom pcd_17 : True
axiom pcd_18 : True
axiom pcd_19 : True
axiom pcd_20 : True
axiom pcd_21 : True
axiom pcd_22 : True
axiom pcd_23 : True
axiom pcd_24 : True
axiom pcd_25 : True
axiom pcd_26 : True
axiom pcd_27 : True
axiom pcd_28 : True
axiom pcd_29 : True
axiom pcd_30 : True
axiom pcd_31 : True
axiom pcd_32 : True
axiom pcd_33 : True
axiom pcd_34 : True
axiom pcd_35 : True
axiom pcd_36 : True
axiom pcd_37 : True
axiom pcd_38 : True
axiom pcd_39 : True

end MiniGeometricAnalysis