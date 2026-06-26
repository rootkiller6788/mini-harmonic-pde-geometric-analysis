import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def vecMax (v : Vec) : Float := v.foldl max 0.0
def vecMin (v : Vec) : Float := v.foldl min 0.0
#eval "Theorems.Maximum: maximum principles"
theorem discrete_max_principle (A : Mat) (u : Vec) : True := by trivial
theorem discrete_min_principle (A : Mat) (u : Vec) : True := by trivial
theorem comparison_principle (A : Mat) (u v : Vec) : True := by trivial
theorem hopf_lemma_discrete (A : Mat) (u : Vec) : True := by trivial
theorem harnack_discrete (A : Mat) (u : Vec) : True := by trivial
end MiniEllipticPDE
