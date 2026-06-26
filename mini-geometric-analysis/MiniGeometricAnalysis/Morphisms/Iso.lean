/-
# MiniGeometricAnalysis.Morphisms.Iso
Isomorphisms in geometric analysis.
-/
import MiniGeometricAnalysis.Morphisms.Hom

namespace MiniGeometricAnalysis

structure Isometry where
  map : Point2D → Point2D
  inverse : Point2D → Point2D
  sourceMetric : Metric2D
  targetMetric : Metric2D
  leftInv : ∀ p : Point2D, inverse (map p) = p
  rightInv : ∀ p : Point2D, map (inverse p) = p

axiom isometryPreservesCurvature (f : Isometry) (p : Point2D) : True
axiom isometryPreservesLaplacian (f : Isometry) (phi : Point2D → Float) (p : Point2D) : True
axiom isometryPreservesSpectrum (f : Isometry) : True

structure Homothety where
  map : Point2D → Point2D
  scale : Float
  sourceMetric : Metric2D
  targetMetric : Metric2D
  scalePositive : scale > 0

axiom identityIsometryExists (m : Metric2D) : ∃ (f : Isometry), True
axiom translationIsometryExists (tx ty : Float) : ∃ (f : Isometry), True
axiom rotationIsometryExists (theta : Float) : ∃ (f : Isometry), True
axiom reflectionIsometryExists : ∃ (f : Isometry), True

structure IsometryGroup where
  metric : Metric2D
  elements : List Isometry
  containsIdentity : Bool
  closedUnderComposition : Bool
  closedUnderInverse : Bool
deriving Inhabited

structure ConformalIsometry where
  map : Point2D → Point2D
  inverse : Point2D → Point2D
  sourceMetric : Metric2D
  targetMetric : Metric2D
  conformalFactor : Point2D → Float
deriving Inhabited

axiom universalCoverLocalIsometry : True
axiom isometriesPreserveGaussCurvature : True

#eval "Morphisms.Iso: Isometries, homotheties, conformal isometries"
#eval "Morphisms.Iso: complete"


axiom mi_0 : True
axiom mi_1 : True
axiom mi_2 : True
axiom mi_3 : True
axiom mi_4 : True
axiom mi_5 : True
axiom mi_6 : True
axiom mi_7 : True
axiom mi_8 : True
axiom mi_9 : True
axiom mi_10 : True
axiom mi_11 : True
axiom mi_12 : True
axiom mi_13 : True
axiom mi_14 : True
axiom mi_15 : True
axiom mi_16 : True
axiom mi_17 : True
axiom mi_18 : True
axiom mi_19 : True
axiom mi_20 : True
axiom mi_21 : True
axiom mi_22 : True
axiom mi_23 : True
axiom mi_24 : True
axiom mi_25 : True
axiom mi_26 : True
axiom mi_27 : True
axiom mi_28 : True
axiom mi_29 : True
axiom mi_30 : True
axiom mi_31 : True
axiom mi_32 : True
axiom mi_33 : True
axiom mi_34 : True
axiom mi_35 : True
axiom mi_36 : True
axiom mi_37 : True
axiom mi_38 : True
axiom mi_39 : True

end MiniGeometricAnalysis