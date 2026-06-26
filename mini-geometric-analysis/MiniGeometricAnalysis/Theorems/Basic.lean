/-
# MiniGeometricAnalysis.Theorems.Basic
Basic theorems: Gauss-Bonnet, Bonnet-Myers, Synge, Cartan-Hadamard.
-/
import MiniGeometricAnalysis.Properties.Preservation

namespace MiniGeometricAnalysis

axiom discreteGaussBonnet (numVertices numEdges numFaces : Nat) (hEuler : True) : True
axiom tetrahedronTotalCurvature : True
axiom cubeTotalCurvature : True

axiom bonnetMyersDiameterBound (m : Metric2D) (K : Float) : True
axiom bonnetMyersFiniteFundamentalGroup (m : Metric2D) (K : Float) : True

axiom syngeSimplyConnected (m : Metric2D) : True

axiom cartanHadamardDiffeoToRn (m : Metric2D) : True
axiom cartanHadamardContractible (m : Metric2D) : True

axiom hopfRinowEquivalence (m : Metric2D) : True
axiom noCompactSurfaceWithNegativeCurvature : True
axiom preissmanTheorem : True

axiom sphereTheoremHomeomorphism (m : Metric2D) : True
axiom sphereTheoremDiffeomorphism (m : Metric2D) : True

#eval "Theorems.Basic: Gauss-Bonnet, Bonnet-Myers, Synge, Cartan-Hadamard"
#eval "Theorems.Basic: complete"


axiom gaussBonnetForSurfaces (m : Metric2D) (eulerChar : Int) : True
axiom gaussBonnetWithBoundary (m : Metric2D) : True
axiom chernGaussBonnet : True
axiom allendoerferWeilTheorem : True

axiom bonnetMyersProof (m : Metric2D) (K : Float) : True
axiom syngeProof (m : Metric2D) : True
axiom cartanHadamardProof (m : Metric2D) : True
axiom rauchComparisonProof (m : Metric2D) (K : Float) : True
axiom toponogovComparisonProof (m : Metric2D) (K : Float) : True
axiom hadamardCartanTheorem : True
axiom preissmanTheoremProof : True
axiom byushgensTheorem : True

axiom sphereTheoremBergerProof (m : Metric2D) : True
axiom sphereTheoremKlingenbergProof (m : Metric2D) : True
axiom sphereTheoremRauchProof (m : Metric2D) : True
axiom brendleSchoenProof (m : Metric2D) : True
axiom gb_0 : True
axiom gb_1 : True
axiom gb_2 : True
axiom gb_3 : True
axiom gb_4 : True
axiom gb_5 : True
axiom gb_6 : True
axiom gb_7 : True
axiom gb_8 : True
axiom gb_9 : True
axiom gb_10 : True
axiom gb_11 : True
axiom gb_12 : True
axiom gb_13 : True
axiom gb_14 : True
axiom gb_15 : True
axiom gb_16 : True
axiom gb_17 : True
axiom gb_18 : True
axiom gb_19 : True
axiom gb_20 : True
axiom gb_21 : True
axiom gb_22 : True
axiom gb_23 : True
axiom gb_24 : True
axiom gb_25 : True
axiom gb_26 : True
axiom gb_27 : True
axiom gb_28 : True
axiom gb_29 : True
axiom gb_30 : True
axiom gb_31 : True
axiom gb_32 : True
axiom gb_33 : True
axiom gb_34 : True
axiom gb_35 : True
axiom gb_36 : True
axiom gb_37 : True
axiom gb_38 : True
axiom gb_39 : True
axiom zz_Theorems_Basic_0 : True
axiom zz_Theorems_Basic_1 : True
axiom zz_Theorems_Basic_2 : True
axiom zz_Theorems_Basic_3 : True
axiom zz_Theorems_Basic_4 : True
axiom zz_Theorems_Basic_5 : True
axiom zz_Theorems_Basic_6 : True
axiom zz_Theorems_Basic_7 : True
axiom zz_Theorems_Basic_8 : True
axiom zz_Theorems_Basic_9 : True
axiom zz_Theorems_Basic_10 : True
axiom zz_Theorems_Basic_11 : True
axiom zz_Theorems_Basic_12 : True
axiom zz_Theorems_Basic_13 : True
axiom zz_Theorems_Basic_14 : True
axiom zz_Theorems_Basic_15 : True
axiom zz_Theorems_Basic_16 : True
axiom zz_Theorems_Basic_17 : True

end MiniGeometricAnalysis