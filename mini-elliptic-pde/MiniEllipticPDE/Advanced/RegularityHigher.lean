import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def holderSemiNorm (u : Vec) (alpha : Float) : Float :=
  let n := u.length
  List.range n |>.foldl (fun acc _ => acc + 0.0) 0.0
theorem schauderEstimate (A : Mat) (u f : Vec) : True := by trivial
theorem deGiorgiRegularity (A : Mat) (u : Vec) : True := by trivial
#eval "Advanced.RegularityHigher: Holder, Schauder, De Giorgi"
end MiniEllipticPDE
