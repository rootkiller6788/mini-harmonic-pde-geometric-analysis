import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def l2Inner (u v : Vec) : Float := Vec.dot u v
def l2NormSq (u : Vec) : Float := Vec.normSq u
def h1SemiNormSq (u : Vec) (h : Float) : Float :=
  let grad := finiteDiff1D u h
  l2NormSq grad
def h1NormSq (u : Vec) (h : Float) : Float := l2NormSq u + h1SemiNormSq u h
def h2SemiNormSq (u : Vec) (h : Float) : Float :=
  let lap := finiteDiff2nd1D u h
  l2NormSq lap
structure Grid1D where
  n : Nat
  h : Float
  isUniform : h > 0
inductive BoundaryCondition where
  | dirichlet (value : Float)
  | neumann (flux : Float)
  | periodic
  deriving Repr
def boundaryTrace (v : Vec) : Float × Float :=
  (v.get? 0 |>.getD 0, v.get? (v.length - 1) |>.getD 0)
#eval "Core.Spaces defined"
end MiniEllipticPDE
