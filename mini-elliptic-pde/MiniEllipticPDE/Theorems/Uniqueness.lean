import MiniEllipticPDE.Core.Basic
import MiniEllipticPDE.Core.Objects
open MiniEllipticPDE
namespace MiniEllipticPDE
#eval "Theorems.Uniqueness: uniqueness results"
theorem uniqueness_solution (A : Mat) (b u v : Vec) (h_inj : forall x y : Vec, Mat.apply A x = Mat.apply A y -> x = y) (h1 : Mat.apply A u = b) (h2 : Mat.apply A v = b) : u = v :=
  h_inj u v (by rw [h1, h2])
end MiniEllipticPDE
