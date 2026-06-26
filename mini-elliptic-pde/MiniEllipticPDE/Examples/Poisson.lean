import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def solvePoisson1D (n : Nat) (f : Vec) (bc_left bc_right : Float) : Vec :=
  let A := laplacian1D n
  let b := Vec.smul (-1.0) f
  solveGaussSeidel A b 200
def poissonExact1D (x : Float) (L : Float) : Float := x * (L - x) / 2.0
def computeL2Error (u_approx : Vec) (L : Float) : Float :=
  let n := u_approx.length
  let u_exact := List.range n |>.map (fun i =>
    let xi := (Float.ofNat i) * L / (Float.ofNat n)
    poissonExact1D xi L)
  Vec.norm (Vec.sub u_exact u_approx)
#eval "Examples.Poisson: Poisson equation examples"
end MiniEllipticPDE
