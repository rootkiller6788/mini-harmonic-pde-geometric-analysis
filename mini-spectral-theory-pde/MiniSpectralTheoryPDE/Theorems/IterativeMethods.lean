/- Iterative Methods for Linear Systems: Jacobi, Gauss-Seidel, SOR, CG.
Connection to spectral theory: convergence rate depends on condition number
and eigenvalue distribution.
Knowledge: L4 Fundamental Theorems, L7 Applications -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def jacobiIteration2 (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  let Dinv : Matrix 2 2 := fun i j => if i=j then 1 / A i i else 0
  let LplusU := fun i j => if i=j then 0 else A i j
  match k with
  | 0 => x0
  | n+1 => let x := jacobiIteration2 A b x0 n
           let Lx := Matrix.mulVec 2 2 LplusU x
           let Dinv_b := Matrix.mulVec 2 2 Dinv b
           let Dinv_Lx := Matrix.mulVec 2 2 Dinv Lx
           Vector.sub 2 Dinv_b Dinv_Lx

def gaussSeidelIteration2 (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  let a00 := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let a01 := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let a10 := A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
  let a11 := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  match k with
  | 0 => x0
  | n+1 => let x := gaussSeidelIteration2 A b x0 n
           let x1_new := (b (Fin.mk 0 (by decide)) - a01 * x (Fin.mk 1 (by decide))) / a00
           let x2_new := (b (Fin.mk 1 (by decide)) - a10 * x1_new) / a11
           fun i => match i with | Fin.mk 0 _ => x1_new | Fin.mk 1 _ => x2_new

def sorIteration2 (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (omega : Rat) (k : Nat) : Vector 2 :=
  let a00 := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let a01 := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let a10 := A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
  let a11 := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  match k with
  | 0 => x0
  | n+1 => let x := sorIteration2 A b x0 omega n
           let gs1 := (b (Fin.mk 0 (by decide)) - a01 * x (Fin.mk 1 (by decide))) / a00
           let x1_new := (1-omega)*x(Fin.mk 0 (by decide)) + omega*gs1
           let gs2 := (b (Fin.mk 1 (by decide)) - a10 * x1_new) / a11
           let x2_new := (1-omega)*x(Fin.mk 1 (by decide)) + omega*gs2
           fun i => match i with | Fin.mk 0 _ => x1_new | Fin.mk 1 _ => x2_new

def conjugateGradient2 (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (k : Nat) : Vector 2 :=
  match k with
  | 0 => x0
  | 1 => let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x0); let p := r; let Ap := Matrix.mulVec 2 2 A p; let alpha := Vector.dot 2 r r / Vector.dot 2 p Ap; Vector.add 2 x0 (Vector.smul 2 alpha p)
  | n+1 => let x := conjugateGradient2 A b x0 n; let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x); let Ap := Matrix.mulVec 2 2 A r; let alpha := Vector.dot 2 r r / Vector.dot 2 r Ap; Vector.add 2 x (Vector.smul 2 alpha r)

def jacobiConvergenceRate2 (A : Matrix 2 2) : Rat :=
  let Dinv_LU := fun i j => if i=j then 0 else A i j / A i i
  let spec := spectralRadiusBound2 (fun i j => if i=j then 0 else Dinv_LU i j)
  spec

def sorOptimalOmega2 (A : Matrix 2 2) : Rat :=
  let rhoJ := jacobiConvergenceRate2 A
  if rhoJ >= 1 then 1 else 2 / (1 + (1 - rhoJ*rhoJ))

def richardsonIteration2 (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (tau : Rat) (k : Nat) : Vector 2 :=
  match k with | 0 => x0 | n+1 => let x := richardsonIteration2 A b x0 tau n; let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x); Vector.add 2 x (Vector.smul 2 tau r)

def chebyshevIteration2 (A : Matrix 2 2) (b : Vector 2) (x0 : Vector 2) (lam_min lam_max : Rat) (k : Nat) : Vector 2 :=
  let d := (lam_max + lam_min)/2; let c := (lam_max - lam_min)/2
  match k with | 0 => x0 | n+1 => let x := chebyshevIteration2 A b x0 lam_min lam_max n; let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x); Vector.add 2 x (Vector.smul 2 (1/d) r)

#eval "=== Iterative Methods ==="
#eval jacobiConvergenceRate2 (symMat2 5 2 3)
#eval sorOptimalOmega2 (symMat2 5 2 3)
end MiniSpectralTheoryPDE