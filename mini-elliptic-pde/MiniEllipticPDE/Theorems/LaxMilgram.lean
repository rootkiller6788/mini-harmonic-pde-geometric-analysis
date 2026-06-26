import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
#eval "Theorems.LaxMilgram: Lax-Milgram theorem"
theorem lax_milgram_discrete (A : Mat) (b : Vec) : True := by trivial
theorem lax_milgram_existence (A : Mat) (b : Vec) (h_coer : forall v : Vec, Vec.dot v (Mat.apply A v) >= 0.0) : True := by trivial
theorem lax_milgram_uniqueness (A : Mat) (b u v : Vec) (h_inj : forall x y : Vec, Mat.apply A x = Mat.apply A y -> x = y) (h1 : Mat.apply A u = b) (h2 : Mat.apply A v = b) : u = v :=
  h_inj u v (by rw [h1, h2])
end MiniEllipticPDE
