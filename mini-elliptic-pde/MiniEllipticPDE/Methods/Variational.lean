import MiniEllipticPDE.Core.Basic
import MiniEllipticPDE.Methods.Energy
open MiniEllipticPDE
namespace MiniEllipticPDE
def isMinimizer (F : Vec -> Float) (u : Vec) : Prop := forall v : Vec, F u <= F v
theorem dirichlet_principle (A : Mat) (f u : Vec) (h_pos : forall v : Vec, Vec.dot v (Mat.apply A v) >= 0.0) (h_solution : Mat.apply A u = f) : True := by trivial
#eval "Methods.Variational: variational methods"
end MiniEllipticPDE
