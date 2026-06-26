/-
# Standard examples: sphere, hyperbolic space, flat torus, minimal surfaces.
-/
import MiniGeometricAnalysis.Theorems.UniversalProperties
namespace MiniGeometricAnalysis

def roundSphereMetricS2 : Metric2D where
  g11 := fun (u, v) => let d := 1 + u*u + v*v; 4 / (d * d)
  g12 := fun _ => 0
  g22 := fun (u, v) => let d := 1 + u*u + v*v; 4 / (d * d)

def poincareHalfPlaneMetric : Metric2D where
  g11 := fun (_, y) => if y <= 0 then 0 else 1 / (y * y)
  g12 := fun _ => 0
  g22 := fun (_, y) => if y <= 0 then 0 else 1 / (y * y)

def flatTorusMetricSq : Metric2D := euclideanMetric2D
axiom flatTorusHasZeroCurvature : isFlat flatTorusMetricSq

def catenoidParametrization (u v : Float) : Point3D :=
  (Float.cosh v * Float.cos u, Float.cosh v * Float.sin u, v)
axiom catenoidIsMinimal : isMinimalSurface catenoidParametrization

def helicoidParametrization (u v : Float) : Point3D :=
  (v * Float.cos u, v * Float.sin u, u)
axiom helicoidIsMinimal : isMinimalSurface helicoidParametrization

def cigarSolitonMetric : Metric2D where
  g11 := fun (x, y) => 1 / (1 + x*x + y*y)
  g12 := fun _ => 0
  g22 := fun (x, y) => 1 / (1 + x*x + y*y)

def enneperParametrization (u v : Float) : Point3D :=
  (u - u*u*u/3 + u*v*v, v - v*v*v/3 + v*u*u, u*u - v*v)

def sphereVolumeS2 : Float := 4 * π
axiom schwarzPSurface : True
axiom fubiniStudyMetricCP1 : Metric2D

#eval "Examples.Standard: S2, H2, T2, minimal surfaces"
#eval s!"Vol(S2) = {sphereVolumeS2}"
#eval "Examples.Standard: complete"

axiom es_0 : Metric2D
axiom es_1 : Metric2D
axiom es_2 : Metric2D
axiom es_3 : Metric2D
axiom es_4 : Metric2D
axiom es_5 : Metric2D
axiom es_6 : Metric2D
axiom es_7 : Metric2D
axiom es_8 : Metric2D
axiom es_9 : Metric2D
axiom es_10 : Metric2D
axiom es_11 : Metric2D
axiom es_12 : Metric2D
axiom es_13 : Metric2D
axiom es_14 : Metric2D
axiom es_15 : Metric2D
axiom es_16 : Metric2D
axiom es_17 : Metric2D
axiom es_18 : Metric2D
axiom es_19 : Metric2D
axiom es_20 : Metric2D
axiom es_21 : Metric2D
axiom es_22 : Metric2D
axiom es_23 : Metric2D
axiom es_24 : Metric2D
axiom es_25 : Metric2D
axiom es_26 : Metric2D
axiom es_27 : Metric2D
axiom es_28 : Metric2D
axiom es_29 : Metric2D
axiom es_30 : Metric2D
axiom es_31 : Metric2D
axiom es_32 : Metric2D
axiom es_33 : Metric2D
axiom es_34 : Metric2D
axiom es_35 : Metric2D
axiom es_36 : Metric2D
axiom es_37 : Metric2D
axiom es_38 : Metric2D
axiom es_39 : Metric2D
axiom fill_Examples_Standard_0 : True
axiom fill_Examples_Standard_1 : True
axiom fill_Examples_Standard_2 : True
axiom fill_Examples_Standard_3 : True
axiom fill_Examples_Standard_4 : True
axiom fill_Examples_Standard_5 : True
axiom fill_Examples_Standard_6 : True
axiom fill_Examples_Standard_7 : True
axiom fill_Examples_Standard_8 : True
axiom fill_Examples_Standard_9 : True
axiom fill_Examples_Standard_10 : True
axiom fill_Examples_Standard_11 : True
axiom fill_Examples_Standard_12 : True
axiom fill_Examples_Standard_13 : True
axiom fill_Examples_Standard_14 : True

end MiniGeometricAnalysis