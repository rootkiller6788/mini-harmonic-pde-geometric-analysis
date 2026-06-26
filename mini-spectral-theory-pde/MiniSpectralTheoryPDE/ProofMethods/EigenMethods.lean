/- Eigenvalue Computation Methods: Power iteration, QR algorithm, Jacobi method,
Lanczos, Arnoldi, divide-and-conquer for 2x2 matrices.
Knowledge: L5 Proof Techniques (Stanford CME 302, MIT 18.335) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.ProofMethods.RayleighQuotient
namespace MiniSpectralTheoryPDE

/-! QR Algorithm (one step): A_k = Q_k R_k, A_{k+1} = R_k Q_k -/
def qrStep2 (A : Matrix 2 2) : Matrix 2 2 :=
  let (Q,R) := qrDecompose2 A
  Matrix.mul 2 2 2 R Q

def qrIteration2 (A : Matrix 2 2) (k : Nat) : Matrix 2 2 :=
  match k with | 0 => A | n+1 => qrStep2 (qrIteration2 A n)

/-! Jacobi rotation for 2x2 symmetric: zero out off-diagonal -/
def jacobiRotation2 (A : Matrix 2 2) : Matrix 2 2 :=
  let a := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let b := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let c := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  if b = 0 then A
  else
    let tau := (c - a) / (2*b)
    let t := if tau >= 0 then 1/(tau + (1 + tau*tau)) else -1/((-tau) + (1 + tau*tau))
    let cos_val := 1/(1 + t*t)
    let sin_val := t * cos_val
    mat2 (a - t*b) 0 0 (c + t*b)

/-! Jacobi eigenvalue algorithm: iteratively diagonalize -/
def jacobiIteration2 (A : Matrix 2 2) (k : Nat) : Matrix 2 2 :=
  match k with | 0 => A | n+1 => jacobiIteration2 (jacobiRotation2 A) n

/-! Rayleigh quotient iteration with shift -/
def rayleighQuotientIteration2 (A : Matrix 2 2) (v0 : Vector 2) (k : Nat) : Vector 2 := rayleighIteration A v0 k

/-! Simultaneous iteration (subspace iteration) -/
def subspaceIteration2 (A : Matrix 2 2) (Q0 : Matrix 2 2) (k : Nat) : Matrix 2 2 :=
  match k with | 0 => Q0 | n+1 => let Z := Matrix.mul 2 2 2 A (subspaceIteration2 A Q0 n); let (Q,_) := qrDecompose2 Z; Q

/-! Arnoldi iteration (Krylov subspace method) for 2x2 -/
def arnoldiStep2 (A : Matrix 2 2) (v : Vector 2) : Vector 2 × Vector 2 :=
  let Av := Matrix.mulVec 2 2 A v
  let h11 := Vector.dot 2 v Av
  let w := Vector.sub 2 Av (Vector.smul 2 h11 v)
  let h21 := Vector.normSq 2 w
  (Av, w)

/-! Lanczos iteration (symmetric Arnoldi) for 2x2 -/
def lanczosStep2 (A : Matrix 2 2) (v : Vector 2) : Vector 2 × Rat × Rat :=
  let Av := Matrix.mulVec 2 2 A v
  let alpha := Vector.dot 2 v Av
  let w := Vector.sub 2 Av (Vector.smul 2 alpha v)
  let beta := Vector.normSq 2 w
  (w, alpha, beta)

/-! Bisection method for eigenvalues (using Sturm sequence) -/
def sturmSequence2 (A : Matrix 2 2) (lam : Rat) : Rat := charPoly2 A lam

def eigenvalueBisection2 (A : Matrix 2 2) (a b : Rat) (tol : Rat) (maxIter : Nat) : Rat :=
  let fa := sturmSequence2 A a
  let fb := sturmSequence2 A b
  if fa*fb >= 0 then (a+b)/2
  else
    let rec bisect (lo hi : Rat) (iter : Nat) : Rat :=
      if iter >= maxIter then (lo+hi)/2
      else
        let mid := (lo+hi)/2
        let fm := sturmSequence2 A mid
        if fm = 0 then mid
        else if fa*fm < 0 then bisect lo mid (iter+1)
        else bisect mid hi (iter+1)
    bisect a b 0

/-! Divide and conquer for symmetric tridiagonal (2x2 is trivially tridiagonal) -/
def divideAndConquerEigen2 (A : Matrix 2 2) : Rat × Rat := eigenvalues2 A

/-! Wilkinson shift for QR algorithm -/
def wilkinsonShift2 (A : Matrix 2 2) : Rat :=
  let a := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let c := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  let b := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let d := (a-c)/2
  if d >= 0 then c + d - d*d/(d + (d*d + b*b))
  else c + d + d*d/((-d) + (d*d + b*b))

#eval "=== Eigenvalue Methods ==="
#eval wilkinsonShift2 (symMat2 5 2 3)
#eval sturmSequence2 (symMat2 1 2 3) 2
#eval eigenvalueBisection2 (symMat2 1 2 3) (-10) 10 (1/100) 100
end MiniSpectralTheoryPDE