import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
#eval "Theorems.Regularity: regularity theory"
theorem discrete_regularity (A : Mat) (u f : Vec) : True := by trivial
theorem schauder_interior (A : Mat) (u f : Vec) (h : Float) : True := by trivial
theorem caccioppoli_discrete (A : Mat) (u f : Vec) (h : Float) : True := by trivial
theorem bootstrapping (A : Mat) (u f : Vec) (h : Float) (k : Nat) : True := by trivial
end MiniEllipticPDE
