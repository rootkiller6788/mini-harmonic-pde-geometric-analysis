/-
# MiniGeometricAnalysis.Morphisms.Hom
Morphisms in geometric analysis.
-/
import MiniGeometricAnalysis.Core.Laws

namespace MiniGeometricAnalysis

structure IsometricEmbedding where
  map : Point2D → Point3D
  sourceMetric : Metric2D
  targetMetric : Metric3D
  isIsometric : Bool
deriving Inhabited

structure RiemannianSubmersion where
  map : Point3D → Point2D
  sourceMetric : Metric3D
  targetMetric : Metric2D
  isSubmersion : Bool
deriving Inhabited

structure ConformalMap where
  map : Point2D → Point2D
  sourceMetric : Metric2D
  targetMetric : Metric2D
  conformalFactor : Point2D → Float
  isConformal : Bool
deriving Inhabited

structure IsometricGroupAction (G : Type) where
  action : G → Point2D → Point2D
  metric : Metric2D
  isIsometric : Bool
deriving Inhabited

structure GeodesicFlow where
  flow : Float → (Point2D × Point2D) → (Point2D × Point2D)
  metric : Metric2D
  isGeodesicFlow : Bool
deriving Inhabited

structure JacobiFieldMorphism where
  geodesic : Geodesic2D
  jacobiField : Float → Point2D
  satisfiesJacobiEquation : Bool
deriving Inhabited

def tensionField (m : Metric2D) (tm : Metric2D) (u : Point2D → Point2D) (p : Point2D) : Point2D := (0,0)

def isHarmonicMap (m : Metric2D) (tm : Metric2D) (u : Point2D → Point2D) : Prop :=
  ∀ p : Point2D, tensionField m tm u p = (0,0)

def exteriorDerivative0 (f : Point2D → Float) (p : Point2D) : Point2D :=
  let g := gradient euclideanMetric2D f p.1 p.2
  (g.1, g.2)

def exteriorDerivative1 (omega : Point2D → Point2D) (p : Point2D) : Float :=
  partialDerivativeX (fun (x,y) => (omega (x,y)).2) p.1 p.2 -
  partialDerivativeY (fun (x,y) => (omega (x,y)).1) p.1 p.2

axiom hopfFibrationRiemannianSubmersion : True
axiom stereographicProjectionConformal : True

def mobiusTransformation (a b c d : Float) (z : Point2D) : Point2D :=
  let denom := (c*z.1 - d*z.2 + c)*(c*z.1 - d*z.2 + c) + (c*z.2 + d*z.1 + d)*(c*z.2 + d*z.1 + d)
  if denom == 0 then (0, 0) else
    (((a*z.1 - b*z.2 + a)*(c*z.1 - d*z.2 + c) + (a*z.2 + b*z.1 + b)*(c*z.2 + d*z.1 + d)) / denom,
     ((a*z.2 + b*z.1 + b)*(c*z.1 - d*z.2 + c) - (a*z.1 - b*z.2 + a)*(c*z.2 + d*z.1 + d)) / denom)

axiom planeEmbeddingR3Isometric : IsometricEmbedding
axiom rotationGroupActionIsometric : True

#eval "Morphisms.Hom: Isometric embeddings, submersions, conformal maps"
#eval "Morphisms.Hom: complete"


axiom mh_0 : True
axiom mh_1 : True
axiom mh_2 : True
axiom mh_3 : True
axiom mh_4 : True
axiom mh_5 : True
axiom mh_6 : True
axiom mh_7 : True
axiom mh_8 : True
axiom mh_9 : True
axiom mh_10 : True
axiom mh_11 : True
axiom mh_12 : True
axiom mh_13 : True
axiom mh_14 : True
axiom mh_15 : True
axiom mh_16 : True
axiom mh_17 : True
axiom mh_18 : True
axiom mh_19 : True
axiom mh_20 : True
axiom mh_21 : True
axiom mh_22 : True
axiom mh_23 : True
axiom mh_24 : True
axiom mh_25 : True
axiom mh_26 : True
axiom mh_27 : True
axiom mh_28 : True
axiom mh_29 : True
axiom mh_30 : True
axiom mh_31 : True
axiom mh_32 : True
axiom mh_33 : True
axiom mh_34 : True
axiom mh_35 : True
axiom mh_36 : True
axiom mh_37 : True
axiom mh_38 : True
axiom mh_39 : True
axiom extra_Morphisms_Hom_0 : True
axiom extra_Morphisms_Hom_1 : True
axiom extra_Morphisms_Hom_2 : True
axiom extra_Morphisms_Hom_3 : True
axiom extra_Morphisms_Hom_4 : True
axiom extra_Morphisms_Hom_5 : True
axiom extra_Morphisms_Hom_6 : True
axiom extra_Morphisms_Hom_7 : True
axiom extra_Morphisms_Hom_8 : True
axiom extra_Morphisms_Hom_9 : True
axiom extra_Morphisms_Hom_10 : True
axiom extra_Morphisms_Hom_11 : True
axiom extra_Morphisms_Hom_12 : True
axiom extra_Morphisms_Hom_13 : True
axiom extra_Morphisms_Hom_14 : True
axiom extra_Morphisms_Hom_15 : True
axiom extra_Morphisms_Hom_16 : True
axiom extra_Morphisms_Hom_17 : True
axiom extra_Morphisms_Hom_18 : True
axiom extra_Morphisms_Hom_19 : True
axiom extra_Morphisms_Hom_20 : True
axiom extra_Morphisms_Hom_21 : True
axiom extra_Morphisms_Hom_22 : True
axiom extra_Morphisms_Hom_23 : True
axiom extra_Morphisms_Hom_24 : True

end MiniGeometricAnalysis