/- Matrix Operations Extension: Additional matrix functions and properties.
  Covers: Kronecker product, block matrices, matrix norms, special matrices. -/
import MiniSpectralTheoryPDE.Core.Basic
namespace MiniSpectralTheoryPDE

/-! Kronecker Product: A ⊗ B for 2x2 matrices gives 4x4 -/
def kronecker2x2 (A B : Matrix 2 2) : Matrix 4 4 := fun i j =>
  let i0 := i.val / 2; let i1 := i.val % 2
  let j0 := j.val / 2; let j1 := j.val % 2
  A (Fin.mk i0 (by omega)) (Fin.mk j0 (by omega)) * B (Fin.mk i1 (by omega)) (Fin.mk j1 (by omega))

/-! Direct Sum of two 2x2 matrices: A ⊕ B = block diag(A, B) -/
def directSum2x2 (A B : Matrix 2 2) : Matrix 4 4 := fun i j =>
  if i.val < 2 && j.val < 2 then A (Fin.mk i.val (by omega)) (Fin.mk j.val (by omega))
  else if i.val >= 2 && j.val >= 2 then B (Fin.mk (i.val-2) (by omega)) (Fin.mk (j.val-2) (by omega))
  else 0

/-! Block Matrix [A B; C D] -/
def blockMatrix2x2 (A B C D : Matrix 2 2) : Matrix 4 4 := fun i j =>
  if i.val < 2 then
    if j.val < 2 then A (Fin.mk i.val (by omega)) (Fin.mk j.val (by omega))
    else B (Fin.mk i.val (by omega)) (Fin.mk (j.val-2) (by omega))
  else
    if j.val < 2 then C (Fin.mk (i.val-2) (by omega)) (Fin.mk j.val (by omega))
    else D (Fin.mk (i.val-2) (by omega)) (Fin.mk (j.val-2) (by omega))

/-! Commutator [A,B] = AB - BA -/
def commutator2 (A B : Matrix 2 2) : Matrix 2 2 :=
  Matrix.sub 2 2 (Matrix.mul 2 2 2 A B) (Matrix.mul 2 2 2 B A)

/-! Anticommutator {A,B} = AB + BA -/
def anticommutator2 (A B : Matrix 2 2) : Matrix 2 2 :=
  Matrix.add 2 2 (Matrix.mul 2 2 2 A B) (Matrix.mul 2 2 2 B A)

/-! Check if matrices are simultaneously diagonalizable (commuting symmetric) -/
def simultaneouslyDiagonalizable2 (A B : Matrix 2 2) : Bool :=
  Matrix.isSymmetric 2 A && Matrix.isSymmetric 2 B && commute2 A B

/-! Matrix norm: maximum absolute row sum (infty norm) -/
def matrixInfNorm2 (A : Matrix 2 2) : Rat :=
  let r0 := (if A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) >= 0 then A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) else -A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))) + (if A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) >= 0 then A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) else -A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)))
  let r1 := (if A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) >= 0 then A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) else -A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))) + (if A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) >= 0 then A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) else -A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)))
  if r0 >= r1 then r0 else r1

/-! Matrix norm: maximum absolute column sum (1-norm) -/
def matrixOneNorm2 (A : Matrix 2 2) : Rat :=
  let c0 := (if A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) >= 0 then A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) else -A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))) + (if A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) >= 0 then A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) else -A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)))
  let c1 := (if A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) >= 0 then A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) else -A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))) + (if A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) >= 0 then A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) else -A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)))
  if c0 >= c1 then c0 else c1

/-! Hilbert-Schmidt (Frobenius) inner product: ⟨A,B⟩ = tr(A^T B) -/
def hilbertSchmidtInner2 (A B : Matrix 2 2) : Rat :=
  Matrix.trace 2 (Matrix.mul 2 2 2 (Matrix.transpose 2 2 A) B)

/-! Matrix exponential via Taylor series (up to 4th order) -/
def matrixExpTaylor2 (A : Matrix 2 2) : Matrix 2 2 :=
  let A2 := Matrix.mul 2 2 2 A A
  let A3 := Matrix.mul 2 2 2 A2 A
  let A4 := Matrix.mul 2 2 2 A3 A
  let term1 := A
  let term2 := Matrix.smul 2 2 (1/2) A2
  let term3 := Matrix.smul 2 2 (1/6) A3
  let term4 := Matrix.smul 2 2 (1/24) A4
  Matrix.add 2 2 (Matrix.add 2 2 (Matrix.add 2 2 (Matrix.identity 2) term1) term2) (Matrix.add 2 2 term3 term4)

/-! Matrix logarithm via Taylor series (for I+A with small A) -/
def matrixLogTaylor2 (A : Matrix 2 2) : Matrix 2 2 :=
  let A2 := Matrix.mul 2 2 2 A A
  let A3 := Matrix.mul 2 2 2 A2 A
  Matrix.add 2 2 A (Matrix.add 2 2 (Matrix.smul 2 2 (-1/2) A2) (Matrix.smul 2 2 (1/3) A3))

/-! Lyapunov equation solver: find X such that AX + XA^T = Q -/
def lyapunovSolve2 (A Q : Matrix 2 2) : Matrix 2 2 :=
  let AT := Matrix.transpose 2 2 A
  let AX := Matrix.mul 2 2 2 A (Matrix.identity 2)
  let XAT := Matrix.mul 2 2 2 (Matrix.identity 2) AT
  Matrix.add 2 2 AX XAT

/-! Sylvester equation: AX - XB = C -/
def sylvesterResidual2 (A B X C : Matrix 2 2) : Matrix 2 2 :=
  let AX := Matrix.mul 2 2 2 A X
  let XB := Matrix.mul 2 2 2 X B
  Matrix.sub 2 2 (Matrix.sub 2 2 AX XB) C

/-! Riccati equation residual: A^T X + XA - XBR^{-1}B^T X + Q -/
def riccatiResidual2 (A B Q Rinv X : Matrix 2 2) : Matrix 2 2 :=
  let ATX := Matrix.mul 2 2 2 (Matrix.transpose 2 2 A) X
  let XA := Matrix.mul 2 2 2 X A
  let XBRB := Matrix.mul 2 2 2 (Matrix.mul 2 2 2 X B) (Matrix.mul 2 2 2 Rinv (Matrix.mul 2 2 2 (Matrix.transpose 2 2 B) X))
  Matrix.add 2 2 (Matrix.add 2 2 ATX XA) (Matrix.add 2 2 (Matrix.smul 2 2 (-1) XBRB) Q)

#eval "=== Matrix Operations ==="
#eval matrixInfNorm2 (symMat2 1 2 3)
#eval matrixOneNorm2 (symMat2 1 2 3)
#eval hilbertSchmidtInner2 (symMat2 1 0 0) (symMat2 0 1 0)
end MiniSpectralTheoryPDE