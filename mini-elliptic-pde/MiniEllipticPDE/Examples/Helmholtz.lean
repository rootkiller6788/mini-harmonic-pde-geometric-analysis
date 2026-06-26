import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def solveHelmholtz1D (n : Nat) (k : Float) (f : Vec) (bc_left bc_right : Float) : Vec :=
  let A := laplacian1D n
  let A_helm := Mat.sub A (Mat.smul (k*k) (Mat.identity n))
  let b := Vec.smul (-1.0) f
  solveGaussSeidel A_helm b 200
def helmholtzEigenvalues1D (n : Nat) (L : Float) : List Float :=
  let h := L / (Float.ofNat n)
  List.range n |>.map (fun j =>
    let m := j + 1
    let theta := 3.141592653589793 * (Float.ofNat m) * h / L
    4.0 * theta * theta / (h * h))
#eval "Examples.Helmholtz: Helmholtz equation examples"
end MiniEllipticPDE
