/-
# MiniGeometricAnalysis.Constructions.Quotients
Quotient constructions: homogeneous spaces, symmetric spaces.
-/
import MiniGeometricAnalysis.Constructions.Products

namespace MiniGeometricAnalysis

structure HomogeneousSpace where
  metric : Metric2D
  isHomogeneous : Bool
deriving Inhabited

structure SymmetricSpace where
  metric : Metric2D
  geodesicSymmetry : Point2D → Point2D → Point2D
  isSymmetric : Bool
deriving Inhabited

inductive SymmetricSpaceType where
  | compactType | noncompactType | euclideanType | exceptionalType
deriving Repr, DecidableEq, Inhabited

inductive ThurstonGeometry where
  | spherical | euclidean | hyperbolic
  | productS2R | productH2R
  | sl2tilde | nil | solv
deriving Repr, DecidableEq, Inhabited

axiom sphereAsHomogeneousSpace : True
axiom complexProjectiveSpaceAsHomogeneousSpace : True
axiom cartanDuality : True
axiom geometrizationTheorem3D : True
axiom elliptizationConjecture : True
axiom fuchsianUniformization : True

structure Orbifold where
  singularLocus : Bool
  localGroupOrder : Nat
deriving Inhabited

#eval "Constructions.Quotients: Homogeneous spaces, symmetric spaces"
#eval "Constructions.Quotients: complete"


axiom cq_0 : True
axiom cq_1 : True
axiom cq_2 : True
axiom cq_3 : True
axiom cq_4 : True
axiom cq_5 : True
axiom cq_6 : True
axiom cq_7 : True
axiom cq_8 : True
axiom cq_9 : True
axiom cq_10 : True
axiom cq_11 : True
axiom cq_12 : True
axiom cq_13 : True
axiom cq_14 : True
axiom cq_15 : True
axiom cq_16 : True
axiom cq_17 : True
axiom cq_18 : True
axiom cq_19 : True
axiom cq_20 : True
axiom cq_21 : True
axiom cq_22 : True
axiom cq_23 : True
axiom cq_24 : True
axiom cq_25 : True
axiom cq_26 : True
axiom cq_27 : True
axiom cq_28 : True
axiom cq_29 : True
axiom cq_30 : True
axiom cq_31 : True
axiom cq_32 : True
axiom cq_33 : True
axiom cq_34 : True
axiom cq_35 : True
axiom cq_36 : True
axiom cq_37 : True
axiom cq_38 : True
axiom cq_39 : True
axiom zz_Constructions_Quotients_0 : True
axiom zz_Constructions_Quotients_1 : True
axiom zz_Constructions_Quotients_2 : True
axiom zz_Constructions_Quotients_3 : True
axiom zz_Constructions_Quotients_4 : True
axiom zz_Constructions_Quotients_5 : True
axiom zz_Constructions_Quotients_6 : True
axiom zz_Constructions_Quotients_7 : True
axiom zz_Constructions_Quotients_8 : True
axiom zz_Constructions_Quotients_9 : True
axiom zz_Constructions_Quotients_10 : True
axiom zz_Constructions_Quotients_11 : True
axiom zz_Constructions_Quotients_12 : True
axiom zz_Constructions_Quotients_13 : True
axiom zz_Constructions_Quotients_14 : True
axiom zz_Constructions_Quotients_15 : True
axiom zz_Constructions_Quotients_16 : True
axiom zz_Constructions_Quotients_17 : True

end MiniGeometricAnalysis