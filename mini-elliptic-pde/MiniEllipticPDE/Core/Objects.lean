import MiniEllipticPDE.Core.Basic
import MiniEllipticPDE.Core.Spaces
open MiniEllipticPDE
namespace MiniEllipticPDE
structure PoissonProblem where
  n : Nat
  f : Vec
  bc_left : Float
  bc_right : Float
structure HelmholtzProblem where
  n : Nat
  k : Float
  f : Vec
  bc_left : Float
  bc_right : Float
def weakLaplacian (A : Mat) (u v : Vec) : Float := Vec.dot v (Mat.apply A v)
def isWeakSolution (A : Mat) (u f : Vec) : Prop :=
  forall v : Vec, weakLaplacian A u v = Vec.dot f v
def dirichletEnergy (A : Mat) (u f : Vec) : Float :=
  (0.5 : Float) * Vec.dot u (Mat.apply A u) - Vec.dot f u
def l2Error (u_exact u_approx : Vec) : Float :=
  Vec.norm (Vec.sub u_exact u_approx)
#eval "Core.Objects defined"
end MiniEllipticPDE
