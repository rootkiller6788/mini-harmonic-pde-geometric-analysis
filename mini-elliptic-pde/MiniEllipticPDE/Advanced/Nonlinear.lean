import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def semilinearSolver (f : Float -> Float) (u0 : Vec) (maxIter : Nat) : Vec :=
  let n := u0.length
  let A := Mat.smul (-1.0) (laplacian1D n)
  let rec iterate (k : Nat) (u : Vec) : Vec :=
    if k = 0 then u else
      let fu := u.map f
      iterate (k-1) (solveGaussSeidel A fu 20)
  iterate maxIter u0
def pLaplacian (p : Float) (u : Vec) (h : Float) : Vec :=
  let grad := finiteDiff1D u h
  grad.map (fun x => x.abs ^ (p - 1.0))
def obstacleSolver (A : Mat) (f psi : Vec) (maxIter : Nat) : Vec :=
  Vec.zeroOf f.length
def allenCahn (eps : Float) (u : Vec) : Vec :=
  let lap := finiteDiff2nd1D u 1.0
  let dw := u.map (fun ui => ui*ui*ui - ui)
  Vec.sub (Vec.smul (eps*eps) lap) dw
#eval "Advanced.Nonlinear: semilinear, p-Laplacian, obstacle, Allen-Cahn"
end MiniEllipticPDE
