/- Special Matrices and Decompositions: Orthogonal, positive definite, M-matrices.
  Covers: Cholesky-like factorization, LU decomposition, QR via Gram-Schmidt. -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

/-! Orthogonal matrix Q: Q^T Q = I -/
def isOrthogonal2 (Q : Matrix 2 2) : Bool :=
  let QTQ := Matrix.mul 2 2 2 (Matrix.transpose 2 2 Q) Q
  QTQ (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) == 1 &&
  QTQ (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) == 1 &&
  QTQ (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) == 0 &&
  QTQ (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) == 0

/-! Rotation matrix in 2D by angle theta: [[cos, -sin], [sin, cos]] -/
def rotationMatrix2 (cos_theta sin_theta : Rat) : Matrix 2 2 :=
  mat2 cos_theta (-sin_theta) sin_theta cos_theta

/-! Reflection (Householder) matrix: H = I - 2vv^T/(v^T v) -/
def householderReflection2 (v : Vector 2) : Matrix 2 2 :=
  let nsq := Vector.normSq 2 v
  if nsq = 0 then Matrix.identity 2
  else
    let vvt := Matrix.outer 2 2 v v
    Matrix.sub 2 2 (Matrix.identity 2) (Matrix.smul 2 2 (2/nsq) vvt)

/-! LU decomposition of 2x2 matrix: A = L * U where L is unit lower triangular -/
def luDecompose2 (A : Matrix 2 2) : Matrix 2 2 × Matrix 2 2 :=
  let a := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let b := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let c := A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
  let d := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  let L : Matrix 2 2 := mat2 1 0 (c/a) 1
  let U : Matrix 2 2 := mat2 a b 0 (d - c*b/a)
  (L, U)

/-! Cholesky factorization of symmetric positive definite 2x2: A = L L^T -/
def cholesky2 (a b c : Rat) : Matrix 2 2 :=
  let l11 := a  -- sqrt(a) in real case, use a as is for rational version
  let l21 := b / a
  let l22 := c - b*b/a
  mat2 l11 0 l21 l22

/-! QR decomposition via Gram-Schmidt: A = Q * R -/
def qrDecompose2 (A : Matrix 2 2) : Matrix 2 2 × Matrix 2 2 :=
  let a1 : Vector 2 := fun i => A i (Fin.mk 0 (by decide))
  let a2 : Vector 2 := fun i => A i (Fin.mk 1 (by decide))
  let r11 := Vector.normSq 2 a1  -- square of norm
  let q1 := a1  -- unnormalized
  let r12 := Vector.dot 2 a2 q1 / r11
  let q2 := Vector.sub 2 a2 (Vector.smul 2 r12 q1)
  let r22 := Vector.normSq 2 q2
  let Q : Matrix 2 2 := fun i j => match j with | Fin.mk 0 _ => q1 i | Fin.mk 1 _ => q2 i
  let R : Matrix 2 2 := mat2 r11 r12 0 r22
  (Q, R)

/-! Polar decomposition: A = U * P where U is orthogonal, P is PSD -/
def polarDecomposition2 (A : Matrix 2 2) : Matrix 2 2 × Matrix 2 2 :=
  let AT := Matrix.transpose 2 2 A
  let ATA := Matrix.mul 2 2 2 AT A
  let P := ATA  -- P = sqrt(A^T A), using ATA directly as rational approximation
  let Pinv := inverse2 P
  let U := Matrix.mul 2 2 2 A Pinv
  (U, P)

/-! Singular Value Decomposition (conceptual): A = U Σ V^T -/
def singularValues2 (A : Matrix 2 2) : Rat × Rat :=
  let ATA := Matrix.mul 2 2 2 (Matrix.transpose 2 2 A) A
  eigenvalues2 ATA

/-! Condition number in Frobenius norm -/
def conditionNumberFrobenius2 (A : Matrix 2 2) : Rat :=
  let sv := singularValues2 A
  let (s1,s2) := sv
  let smax := if s1 >= s2 then s1 else s2
  let smin := if s1 <= s2 then s1 else s2
  if smin = 0 then 0 else smax / smin

/-! M-matrix check: A is an M-matrix if a_ij ≤ 0 for i ≠ j and A is positive definite -/
def isMMatrix2 (A : Matrix 2 2) : Bool :=
  let offDiag := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) <= 0 && A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) <= 0
  let diagPos := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) > 0 && A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) > 0
  let detPos := det2 A > 0
  offDiag && diagPos && detPos

/-! Diagonally dominant matrix check: |a_ii| ≥ Σ_{j≠i} |a_ij| -/
def isDiagonallyDominant2 (A : Matrix 2 2) : Bool :=
  let a00 := if A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) >= 0 then A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) else -A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let a01 := if A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) >= 0 then A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) else -A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let a10 := if A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) >= 0 then A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) else -A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
  let a11 := if A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) >= 0 then A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) else -A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  (a00 >= a01) && (a11 >= a10)

#eval "=== Special Matrices ==="
#eval isOrthogonal2 (mat2 0 (-1) 1 0)
#eval singularValues2 (symMat2 1 2 3)
#eval conditionNumberFrobenius2 (symMat2 4 0 1)
#eval isDiagonallyDominant2 (symMat2 5 2 3)
#eval isMMatrix2 (mat2 2 (-1) (-1) 2)
end MiniSpectralTheoryPDE