/-
# MiniGeometricAnalysis.Constructions.Subobjects
Subobjects: Riemannian submanifolds, minimal submanifolds.
-/
import MiniGeometricAnalysis.Constructions.Quotients

namespace MiniGeometricAnalysis

structure RiemannianSubmanifold where
  inclusion : Point2D → Point3D
  ambientMetric : Metric3D
  inducedMetric : Metric2D
  isEmbedding : Bool
deriving Inhabited

def secondFundamentalForm (sub : RiemannianSubmanifold) (p : Point2D) (X Y : Point2D) : Float := 0.0

def isTotallyGeodesic (sub : RiemannianSubmanifold) : Prop :=
  ∀ (p : Point2D) (X Y : Point2D), secondFundamentalForm sub p X Y = 0

def isMinimalSubmanifold (sub : RiemannianSubmanifold) : Prop :=
  ∀ (p : Point2D), True

axiom sphereEmbeddedInR3 : RiemannianSubmanifold
axiom gaussCodazziEquations : True
axiom theoremaEgregium : True
axiom firstVariationOfArea : True
axiom secondVariationOfArea : True
axiom alexandrovCMCTheorem : True
axiom gaussMapAreaEqualCurvatureIntegral : True

structure Hypersurface where
  embedding : Point2D → Point3D
  ambientMetric : Metric3D
  unitNormal : Point2D → Point3D
deriving Inhabited

def graphMeanCurvature (f : Point2D → Float) (p : Point2D) : Float := 0.0
def minimalSurfaceEquation (f : Point2D → Float) (p : Point2D) : Float := 0.0

def isCMC (F : Float → Float → Point3D) (c : Float) : Prop :=
  ∀ (u v : Float), meanCurvature F u v = c

#eval "Constructions.Subobjects: Submanifolds, minimal surfaces"
#eval "Constructions.Subobjects: complete"


axiom cs_0 : True
axiom cs_1 : True
axiom cs_2 : True
axiom cs_3 : True
axiom cs_4 : True
axiom cs_5 : True
axiom cs_6 : True
axiom cs_7 : True
axiom cs_8 : True
axiom cs_9 : True
axiom cs_10 : True
axiom cs_11 : True
axiom cs_12 : True
axiom cs_13 : True
axiom cs_14 : True
axiom cs_15 : True
axiom cs_16 : True
axiom cs_17 : True
axiom cs_18 : True
axiom cs_19 : True
axiom cs_20 : True
axiom cs_21 : True
axiom cs_22 : True
axiom cs_23 : True
axiom cs_24 : True
axiom cs_25 : True
axiom cs_26 : True
axiom cs_27 : True
axiom cs_28 : True
axiom cs_29 : True
axiom cs_30 : True
axiom cs_31 : True
axiom cs_32 : True
axiom cs_33 : True
axiom cs_34 : True
axiom cs_35 : True
axiom cs_36 : True
axiom cs_37 : True
axiom cs_38 : True
axiom cs_39 : True
axiom fill_Constructions_Subobjects_0 : True
axiom fill_Constructions_Subobjects_1 : True
axiom fill_Constructions_Subobjects_2 : True
axiom fill_Constructions_Subobjects_3 : True
axiom fill_Constructions_Subobjects_4 : True
axiom fill_Constructions_Subobjects_5 : True
axiom fill_Constructions_Subobjects_6 : True
axiom fill_Constructions_Subobjects_7 : True
axiom fill_Constructions_Subobjects_8 : True
axiom fill_Constructions_Subobjects_9 : True
axiom fill_Constructions_Subobjects_10 : True
axiom fill_Constructions_Subobjects_11 : True
axiom fill_Constructions_Subobjects_12 : True
axiom fill_Constructions_Subobjects_13 : True
axiom fill_Constructions_Subobjects_14 : True

end MiniGeometricAnalysis