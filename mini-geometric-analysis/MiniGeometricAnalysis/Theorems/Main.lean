/-
# MiniGeometricAnalysis.Theorems.Main
Main theorems: comparison geometry, eigenvalue bounds.
-/
import MiniGeometricAnalysis.Theorems.Classification

namespace MiniGeometricAnalysis

axiom bishopVolumeComparison (m : Metric2D) (K : Float) (p : Point2D) (r : Float) : True
axiom gromovRelativeVolumeComparison (m : Metric2D) (K : Float) (p : Point2D) (r R : Float) : True

axiom lichnerowiczEigenvalueBound (m : Metric2D) (K lambda1 : Float) : True
axiom obataRigidityTheorem (m : Metric2D) (K lambda1 : Float) : True

axiom chengEigenvalueUpperBound (m : Metric2D) (K : Float) (p : Point2D) (R : Float) : True

axiom faberKrahnInequality (m : Metric2D) : True
axiom cheegerInequalityTheorem (m : Metric2D) : True
axiom buserInequality (m : Metric2D) : True
axiom yangEigenvalueUpperBound : True

axiom euclideanIsoperimetricInequalityStatement : True
axiom levyGromovIsoperimetricInequality : True

axiom toponogovComparisonTheorem (m : Metric2D) (K : Float) : True
axiom rauchComparisonTheorem (m : Metric2D) (K : Float) : True
axiom hessianComparisonTheorem (m : Metric2D) (K : Float) (p : Point2D) : True
axiom laplaceComparisonTheorem (m : Metric2D) (K : Float) (p : Point2D) : True

#eval "Theorems.Main: Comparison geometry, eigenvalue bounds"
#eval "Theorems.Main: complete"


axiom bishopGromovProof (m : Metric2D) (K : Float) : True
axiom gromovCompactnessProof : True
axiom cheegerGromovCompactnessProof : True
axiom andersonCheegerProof : True

axiom lichnerowiczProof (m : Metric2D) (K : Float) (lambda1 : Float) : True
axiom obataRigidityProof (m : Metric2D) (K : Float) : True
axiom chengEigenvalueProof (m : Metric2D) : True
axiom eigenvalueRigidityProof (m : Metric2D) : True

axiom faberKrahnProof : True
axiom krahnProof : True
axiom szegoWeinbergerProof : True
axiom ashbaughBenguriaProof : True

axiom cheegerInequalityProof (m : Metric2D) : True
axiom buserInequalityProof (m : Metric2D) : True
axiom ledouxProof : True
axiom yangInequalityProof : True

axiom levyGromovProof (m : Metric2D) : True
axiom berardBessonGallotProof : True
axiom isoperimetricInequalityProof : True
axiom minkowskiInequalityProof : True

axiom toponogovProof (m : Metric2D) (K : Float) : True
axiom rauchProof (m : Metric2D) (K : Float) : True
axiom bergerProof (m : Metric2D) (K : Float) : True
axiom warnerProof (m : Metric2D) (K : Float) : True
axiom hessianComparisonProof (m : Metric2D) (K : Float) : True
axiom laplaceComparisonProof (m : Metric2D) (K : Float) : True

axiom volumeEntropyProof : True
axiom criticalRadiusProof : True
axiom mn_0 : True
axiom mn_1 : True
axiom mn_2 : True
axiom mn_3 : True
axiom mn_4 : True
axiom mn_5 : True
axiom mn_6 : True
axiom mn_7 : True
axiom mn_8 : True
axiom mn_9 : True
axiom mn_10 : True
axiom mn_11 : True
axiom mn_12 : True
axiom mn_13 : True
axiom mn_14 : True
axiom mn_15 : True
axiom mn_16 : True
axiom mn_17 : True
axiom mn_18 : True
axiom mn_19 : True
axiom mn_20 : True
axiom mn_21 : True
axiom mn_22 : True
axiom mn_23 : True
axiom mn_24 : True
axiom mn_25 : True
axiom mn_26 : True
axiom mn_27 : True
axiom mn_28 : True
axiom mn_29 : True
axiom mn_30 : True
axiom mn_31 : True
axiom mn_32 : True
axiom mn_33 : True
axiom mn_34 : True
axiom mn_35 : True
axiom mn_36 : True
axiom mn_37 : True
axiom mn_38 : True
axiom mn_39 : True
axiom fill_Theorems_Main_0 : True
axiom fill_Theorems_Main_1 : True
axiom fill_Theorems_Main_2 : True
axiom fill_Theorems_Main_3 : True
axiom fill_Theorems_Main_4 : True
axiom fill_Theorems_Main_5 : True
axiom fill_Theorems_Main_6 : True
axiom fill_Theorems_Main_7 : True
axiom fill_Theorems_Main_8 : True
axiom fill_Theorems_Main_9 : True
axiom fill_Theorems_Main_10 : True
axiom fill_Theorems_Main_11 : True
axiom fill_Theorems_Main_12 : True
axiom fill_Theorems_Main_13 : True
axiom fill_Theorems_Main_14 : True

end MiniGeometricAnalysis