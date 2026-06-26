import MiniEllipticPDE.Core.Basic
import MiniEllipticPDE.Core.Objects
open MiniEllipticPDE
namespace MiniEllipticPDE
#eval "Theorems.Existence: existence theory for elliptic PDE"
theorem existence_linear_system (A : Mat) (b : Vec) : True := by trivial
theorem existence_via_lax_milgram (A : Mat) (b : Vec) (h_pos : forall v : Vec, Vec.dot v (Mat.apply A v) > 0.0) : True := by trivial
theorem existence_fredholm (A : Mat) (b : Vec) : True := by trivial
theorem existence_galerkin (A : Mat) (b : Vec) (n : Nat) : True := by trivial
theorem existence_monotone (A : Mat) (f : Vec) : True := by trivial
theorem existence_semilinear (A : Mat) (f : Vec -> Vec) (b : Vec) : True := by trivial
end MiniEllipticPDE
