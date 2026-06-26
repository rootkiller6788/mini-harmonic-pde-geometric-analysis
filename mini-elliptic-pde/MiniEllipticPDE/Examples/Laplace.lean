import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def solveLaplace1D (n : Nat) (bc_left bc_right : Float) : Vec :=
  let A := laplacian1D n
  let b := Vec.zeroOf n
  solveGaussSeidel A b 200
def harmonicTestFunction (n : Nat) : Vec :=
  List.range n |>.map (fun i => (Float.ofNat i))
def verifyLaplace (u : Vec) (h : Float) : Float :=
  let lap := finiteDiff2nd1D u h
  Vec.norm lap
#eval "Examples.Laplace: Laplace equation examples"
end MiniEllipticPDE
