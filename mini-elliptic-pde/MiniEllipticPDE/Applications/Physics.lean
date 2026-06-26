import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def electrostaticPotential (charge : Vec) : Vec :=
  let n := charge.length
  let A := Mat.smul (-1.0) (laplacian1D n)
  solveGaussSeidel A charge 200
def schrodingerHamiltonian (n : Nat) (V : Vec) : Mat :=
  let A := Mat.smul (-1.0) (laplacian1D n)
  Mat.add A (Mat.identity n)
def elasticitySystem (u : Vec) (lambda mu : Float) : Vec :=
  let n := u.length
  let A := Mat.smul (lambda + 2.0*mu) (laplacian1D n)
  Mat.apply A u
def stokesOperator (nu : Float) (n : Nat) : Mat :=
  Mat.smul (-nu) (laplacian1D n)
#eval "Applications.Physics: physical PDE applications"
end MiniEllipticPDE
