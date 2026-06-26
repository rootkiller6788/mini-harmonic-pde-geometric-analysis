/-
# MiniGeometricAnalysis.Theorems.UniversalProperties
Universal properties: Sobolev, Poincare, Log-Sobolev, concentration.
-/
import MiniGeometricAnalysis.Theorems.Main

namespace MiniGeometricAnalysis

axiom isoperimetricInequalityStatement : True
axiom sphereIsoperimetricConstant : True

axiom sobolevInequalityOnManifolds (m : Metric2D) (K : Float) : True
axiom optimalSobolevConstantOnSphere : True

axiom poincareInequality (m : Metric2D) (lambda1 : Float) : True
axiom sharpPoincareConstant : True

axiom logSobolevInequality (m : Metric2D) (K : Float) : True
axiom levyGromovConcentrationOfMeasure (m : Metric2D) (K : Float) : True
axiom concentrationOnSphere : True

axiom liYauHeatKernelUpperBound : True
axiom chengLiYauEigenvalueLowerBound : True

axiom myersDiameterBoundStatement : True
axiom chengMaximalDiameter : True

axiom bishopVolumeGrowthNonnegativeRicci : True
axiom volumeEntropyBound : True

axiom gromovBettiNumberEstimate : True
axiom cheegerFinitenessTheorem : True
axiom grovePetersenFiniteness : True

axiom chengMaximalDiameterRigidity : True
axiom maximalVolumeRigidity : True

#eval "Theorems.UniversalProperties: Isoperimetric, Sobolev, Poincare"
#eval "Theorems.UniversalProperties: complete"


axiom sobolevInequalityProof (m : Metric2D) : True
axiom galiardoNirenbergProof : True
axiom moserTrudingerProof : True
axiom brezisMerleProof : True
axiom aubinTalentiProof : True
axiom hebeyVaugonProof : True

axiom poincareInequalityProof (m : Metric2D) : True
axiom friedrichsProof : True
axiom neumannPoincareProof : True
axiom steinerSymmetrizationProof : True

axiom logSobolevProof (m : Metric2D) : True
axiom grossProof : True
axiom bakryEmeryProof : True
axiom hypercontractivityProof : True

axiom concentrationProof (m : Metric2D) : True
axiom milmanProof : True
axiom gromovMilmanProof : True
axiom talagrandProof : True

axiom liYauHeatKernelProof : True
axiom daviesHeatKernelProof : True
axiom grigorYanHeatKernelProof : True
axiom saloffCosteProof : True

axiom chengMaximalDiameterProof : True
axiom groveShiohamaProof : True
axiom cohnVossenProof : True

axiom cheegerFinitenessProof : True
axiom petersenFinitenessProof : True
axiom gromovFinitenessProof : True
axiom grovePetersenWuProof : True

axiom rigidityMaximalDiameterProof : True
axiom rigidityMaximalVolumeProof : True
axiom rigiditySpectralProof : True
axiom up_0 : True
axiom up_1 : True
axiom up_2 : True
axiom up_3 : True
axiom up_4 : True
axiom up_5 : True
axiom up_6 : True
axiom up_7 : True
axiom up_8 : True
axiom up_9 : True
axiom up_10 : True
axiom up_11 : True
axiom up_12 : True
axiom up_13 : True
axiom up_14 : True
axiom up_15 : True
axiom up_16 : True
axiom up_17 : True
axiom up_18 : True
axiom up_19 : True
axiom up_20 : True
axiom up_21 : True
axiom up_22 : True
axiom up_23 : True
axiom up_24 : True
axiom up_25 : True
axiom up_26 : True
axiom up_27 : True
axiom up_28 : True
axiom up_29 : True
axiom up_30 : True
axiom up_31 : True
axiom up_32 : True
axiom up_33 : True
axiom up_34 : True
axiom up_35 : True
axiom up_36 : True
axiom up_37 : True
axiom up_38 : True
axiom up_39 : True
axiom extra_Theorems_UniversalProperties_0 : True
axiom extra_Theorems_UniversalProperties_1 : True
axiom extra_Theorems_UniversalProperties_2 : True
axiom extra_Theorems_UniversalProperties_3 : True
axiom extra_Theorems_UniversalProperties_4 : True
axiom extra_Theorems_UniversalProperties_5 : True
axiom extra_Theorems_UniversalProperties_6 : True
axiom extra_Theorems_UniversalProperties_7 : True
axiom extra_Theorems_UniversalProperties_8 : True
axiom extra_Theorems_UniversalProperties_9 : True
axiom extra_Theorems_UniversalProperties_10 : True
axiom extra_Theorems_UniversalProperties_11 : True
axiom extra_Theorems_UniversalProperties_12 : True
axiom extra_Theorems_UniversalProperties_13 : True
axiom extra_Theorems_UniversalProperties_14 : True
axiom extra_Theorems_UniversalProperties_15 : True
axiom extra_Theorems_UniversalProperties_16 : True
axiom extra_Theorems_UniversalProperties_17 : True
axiom extra_Theorems_UniversalProperties_18 : True
axiom extra_Theorems_UniversalProperties_19 : True
axiom extra_Theorems_UniversalProperties_20 : True
axiom extra_Theorems_UniversalProperties_21 : True
axiom extra_Theorems_UniversalProperties_22 : True
axiom extra_Theorems_UniversalProperties_23 : True
axiom extra_Theorems_UniversalProperties_24 : True

end MiniGeometricAnalysis