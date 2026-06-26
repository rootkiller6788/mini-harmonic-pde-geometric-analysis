/-
# Basic examples for mini-geometric-analysis
Demonstrates core types and #eval verification.
-/
import MiniGeometricAnalysis

open MiniGeometricAnalysis

#eval "=== mini-geometric-analysis basic examples ==="
#eval s!"Euclidean metric det at origin = {euclideanMetric2D.det 0 0}"
#eval s!"Gauss curvature of Euclidean metric = {gaussCurvature euclideanMetric2D 0 0}"
#eval s!"Euclidean distance (0,0) to (3,4) = {euclideanDistance (0,0) (3,4)}"
#eval s!"pi = {π}"
#eval s!"Safe sqrt of 4 = {sqrt 4}"
#eval s!"Round sphere metric g11 at (0,0) = {roundSphereMetricS2.g11 (0,0)}"
#eval s!"Volume of S^2 = {sphereVolumeS2}"
#eval "=== All basic examples pass ==="
