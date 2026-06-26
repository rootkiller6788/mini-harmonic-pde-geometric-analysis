/- Spectral Methods in Optimization: Gradient descent, Newton, trust region,
conjugate gradient for linear systems, eigenvalue optimization.
Knowledge: L7 Applications (Stanford CME 307, MIT 6.255) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def gradientDescent (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (step : Rat) (k : Nat) : Vector 2 :=
  match k with | 0 => x0 | n+1 => let x := gradientDescent A b x0 step n; let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b; Vector.sub 2 x (Vector.smul 2 step r)

def newtonMethod (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  let Ainv := inverse2 A
  match k with | 0 => x0 | n+1 => let x := newtonMethod A b x0 n; let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b; Vector.sub 2 x (Matrix.mulVec 2 2 Ainv r)

def trustRegionStep (A : Matrix 2 2) (b : Vector 2) (x : Vector 2) (delta : Rat) : Vector 2 :=
  let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b
  let g := Matrix.mulVec 2 2 (Matrix.transpose 2 2 A) r
  Vector.sub 2 x (Vector.smul 2 delta g)

def nesterovAcceleratedGradient (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (step : Rat) (mu : Rat) (k : Nat) : Vector 2 :=
  match k with
  | 0 => x0
  | 1 => let r := Vector.sub 2 (Matrix.mulVec 2 2 A x0) b; Vector.sub 2 x0 (Vector.smul 2 step r)
  | n+1 => let x_prev := nesterovAcceleratedGradient A b x0 step mu n; let x_pprev := nesterovAcceleratedGradient A b x0 step mu (n-1); let y := Vector.add 2 x_prev (Vector.smul 2 mu (Vector.sub 2 x_prev x_pprev)); let r := Vector.sub 2 (Matrix.mulVec 2 2 A y) b; Vector.sub 2 y (Vector.smul 2 step r)

def heavyBallMethod (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (step : Rat) (momentum : Rat) (k : Nat) : Vector 2 :=
  match k with
  | 0 => x0
  | 1 => let r := Vector.sub 2 (Matrix.mulVec 2 2 A x0) b; Vector.sub 2 x0 (Vector.smul 2 step r)
  | n+1 => let x := heavyBallMethod A b x0 step momentum n; let x_prev := heavyBallMethod A b x0 step momentum (n-1); let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b; Vector.add 2 (Vector.sub 2 x (Vector.smul 2 step r)) (Vector.smul 2 momentum (Vector.sub 2 x x_prev))

def adagrad (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  match k with | 0 => x0 | n+1 => let x := adagrad A b x0 n; let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b; let G := Vector.dot 2 r r; if G = 0 then x else Vector.sub 2 x (Vector.smul 2 (1/G) r)

def adam (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  match k with | 0 => x0 | n+1 => let x := adam A b x0 n; let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b; Vector.sub 2 x (Vector.smul 2 (1/10) r)

def spectralGradientMethod (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  match k with
  | 0 => x0
  | n+1 => let x := spectralGradientMethod A b x0 n; let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b; let Ar := Matrix.mulVec 2 2 A r; let step := Vector.dot 2 r r / Vector.dot 2 r Ar; Vector.sub 2 x (Vector.smul 2 step r)

def conditionNumberGradientDescent (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  let lam_max := if l1>=l2 then l1 else l2
  let lam_min := if l1<=l2 then l1 else l2
  if lam_min = 0 then 0 else lam_max/lam_min

def optimalStepSize (A : Matrix 2 2) : Rat :=
  let kappa := conditionNumberGradientDescent A
  if kappa = 0 then 0 else 2/((if kappa>=0 then kappa else -kappa) + 1)

#eval "=== Optimization ==="
#eval conditionNumberGradientDescent (symMat2 5 2 3)
#eval optimalStepSize (symMat2 5 2 3)
end MiniSpectralTheoryPDE