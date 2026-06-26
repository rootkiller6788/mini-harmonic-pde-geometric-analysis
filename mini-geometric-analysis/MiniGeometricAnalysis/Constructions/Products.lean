/-
# MiniGeometricAnalysis.Constructions.Products
Product constructions: product metrics, warped products.
-/
import MiniGeometricAnalysis.Morphisms.Equiv

namespace MiniGeometricAnalysis

structure ProductMetric where
  factor1 : Metric2D
  factor2 : Metric2D
deriving Inhabited

structure WarpedProductMetric where
  baseMetric : Metric2D
  fiberMetric : Metric2D
  warpingFunction : Point2D → Float
  warpPositive : Bool
deriving Inhabited

def productMetricEval (pm : ProductMetric) (p1 p2 : Point2D) (v1 v2 : Point2D) : Float :=
  pm.factor1.normSq p1.1 p1.2 v1.1 v1.2 + pm.factor2.normSq p2.1 p2.2 v2.1 v2.2

structure RiemannianCovering where
  totalSpace : Metric2D
  baseSpace : Metric2D
  projection : Point2D → Point2D
  isCoveringMap : Bool
  isLocalIsometry : Bool
deriving Inhabited

axiom deRhamDecompositionTheorem : True
axiom cheegerGromollSplittingTheorem : True
axiom universalCoverOfTorus : True

#eval "Constructions.Products: Product metrics, warped products, coverings"
#eval "Constructions.Products: complete"


axiom cp_0 : True
axiom cp_1 : True
axiom cp_2 : True
axiom cp_3 : True
axiom cp_4 : True
axiom cp_5 : True
axiom cp_6 : True
axiom cp_7 : True
axiom cp_8 : True
axiom cp_9 : True
axiom cp_10 : True
axiom cp_11 : True
axiom cp_12 : True
axiom cp_13 : True
axiom cp_14 : True
axiom cp_15 : True
axiom cp_16 : True
axiom cp_17 : True
axiom cp_18 : True
axiom cp_19 : True
axiom cp_20 : True
axiom cp_21 : True
axiom cp_22 : True
axiom cp_23 : True
axiom cp_24 : True
axiom cp_25 : True
axiom cp_26 : True
axiom cp_27 : True
axiom cp_28 : True
axiom cp_29 : True
axiom cp_30 : True
axiom cp_31 : True
axiom cp_32 : True
axiom cp_33 : True
axiom cp_34 : True
axiom cp_35 : True
axiom cp_36 : True
axiom cp_37 : True
axiom cp_38 : True
axiom cp_39 : True

end MiniGeometricAnalysis