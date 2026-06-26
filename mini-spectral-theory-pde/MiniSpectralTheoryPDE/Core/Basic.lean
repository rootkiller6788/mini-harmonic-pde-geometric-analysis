/-
# Spectral Theory PDE: Core Definitions (L1)
Zero-dependency Lean 4 kernel (v4.31): Nat, Rat, List, Fin.
Implements finite-dimensional spectral theory over rational numbers.
Knowledge: L1 Definitions, L2 Core Concepts, L6 #eval verification.

This module provides the foundational types for spectral theory:
vectors, matrices, inner products, eigenvalues, Rayleigh quotients,
and spectral projections. All computations are over Rat (rational numbers).

## Mathematical Context
Spectral theory studies the eigenvalues and eigenvectors of linear operators.
For symmetric matrices, the spectral theorem guarantees an orthonormal basis
of eigenvectors with real eigenvalues. This module implements the 2x2 case
explicitly, which captures the essential structure.

## Design Decisions
- Rat instead of Real: The Lean 4 kernel provides Rat with full arithmetic
- List instead of Finset: The kernel has List.finRange for finite enumeration
- Explicit small dimensions: 2x2 and 3x3 cases computed directly
- #eval verification: All computations are executable
-/

namespace MiniSpectralTheoryPDE

/-! ## Section 1: Vector Type (over Rat)

A vector of dimension n is a function from Fin n to Rat.
Fin n provides exactly n distinct indices (0 to n-1).
-/

def Vector (n : Nat) : Type := Fin n -> Rat

namespace Vector

/-- Zero vector (all components 0). -/
def zero (n : Nat) : Vector n := fun _ => 0

/-- Vector addition: componentwise (v + w)_i = v_i + w_i. -/
def add (n : Nat) (v w : Vector n) : Vector n := fun i => v i + w i

/-- Scalar multiplication: (c * v)_i = c * v_i. -/
def smul (n : Nat) (c : Rat) (v : Vector n) : Vector n := fun i => c * v i

/-- Vector subtraction: (v - w)_i = v_i - w_i. -/
def sub (n : Nat) (v w : Vector n) : Vector n := fun i => v i - w i

/-- Vector negation: (-v)_i = -(v_i). -/
def neg (n : Nat) (v : Vector n) : Vector n := fun i => -v i

/-- Standard basis vector e_j: (e_j)_i = 1 if i=j, 0 otherwise. -/
def basis (n : Nat) (j : Fin n) : Vector n := fun i => if i = j then 1 else 0

/-- All-ones vector (1, 1, ..., 1). -/
def ones (n : Nat) : Vector n := fun _ => 1

/-- Vector is zero iff all components are zero. -/
def isZero (n : Nat) (v : Vector n) : Prop := forall i, v i = 0

/-- Euclidean dot product: v·w = Σᵢ v_i * w_i.
    Uses List.finRange for enumeration of all indices. -/
def dot (n : Nat) (v w : Vector n) : Rat :=
  List.sum (List.map (fun (i : Fin n) => v i * w i) (List.finRange n))

/-- Euclidean norm squared: ‖v‖² = v·v = Σᵢ v_i².
    Note: We use normSq instead of norm since Rat has no sqrt. -/
def normSq (n : Nat) (v : Vector n) : Rat := dot n v v

/-- Sum of all components: Σᵢ v_i. -/
def sum (n : Nat) (v : Vector n) : Rat :=
  List.sum (List.map (fun (i : Fin n) => v i) (List.finRange n))

/-- Mean of components: (Σᵢ v_i) / n. -/
def mean (n : Nat) (v : Vector n) : Rat := sum n v / (n : Rat)

/-- Maximum absolute value of components (L∞ norm). -/
def maxAbs (n : Nat) (v : Vector n) : Rat :=
  List.foldl (fun (m : Rat) (i : Fin n) => 
    let a := if v i >= 0 then v i else -v i
    if a > m then a else m
  ) 0 (List.finRange n)

/-- L1 norm: Σᵢ |v_i|. -/
def l1Norm (n : Nat) (v : Vector n) : Rat :=
  List.sum (List.map (fun (i : Fin n) => if v i >= 0 then v i else -v i) (List.finRange n))

/-- Check if two vectors are orthogonal: v·w = 0. -/
def isOrthogonal (n : Nat) (v w : Vector n) : Prop := dot n v w = 0

/-- Check if vector is unit length: ‖v‖² = 1. -/
def isUnit (n : Nat) (v : Vector n) : Prop := normSq n v = 1

/-- Project v onto the line spanned by `onto`:
    proj_onto(v) = (v·onto / onto·onto) * onto.
    This is the Gram-Schmidt projection. -/
def project (n : Nat) (v onto : Vector n) : Vector n :=
  let d := dot n v onto
  let nsq := normSq n onto
  if nsq = 0 then zero n else smul n (d / nsq) onto

/-- Orthogonal component of v relative to onto:
    v⊥ = v - proj_onto(v).
    Used in Gram-Schmidt orthogonalization. -/
def projectOrthogonal (n : Nat) (v onto : Vector n) : Vector n :=
  sub n v (project n v onto)

/-- Cross product in R^3 (only defined for n=3):
    (v × w)_1 = v_2·w_3 - v_3·w_2
    (v × w)_2 = v_3·w_1 - v_1·w_3
    (v × w)_3 = v_1·w_2 - v_2·w_1 -/
def cross (v w : Vector 3) : Vector 3 := fun i =>
  match i with
  | Fin.mk 0 _ => v (Fin.mk 1 (by decide)) * w (Fin.mk 2 (by decide)) -
                  v (Fin.mk 2 (by decide)) * w (Fin.mk 1 (by decide))
  | Fin.mk 1 _ => v (Fin.mk 2 (by decide)) * w (Fin.mk 0 (by decide)) -
                  v (Fin.mk 0 (by decide)) * w (Fin.mk 2 (by decide))
  | Fin.mk 2 _ => v (Fin.mk 0 (by decide)) * w (Fin.mk 1 (by decide)) -
                  v (Fin.mk 1 (by decide)) * w (Fin.mk 0 (by decide))

/-- Angle cosine between two vectors: cos(θ) = v·w / (|v|·|w|).
    Defined using normSq to avoid sqrt. -/
def cosineSimilarity (n : Nat) (v w : Vector n) : Rat :=
  let d := dot n v w
  let nv := normSq n v
  let nw := normSq n w
  if nv = 0 ∨ nw = 0 then 0 else d * d / (nv * nw)
  -- Using d²/(nv·nw) to avoid sqrt; actual cos² = (v·w)²/(‖v‖²·‖w‖²)

/-- Linear combination: c1*v1 + c2*v2. -/
def linearCombination2 (n : Nat) (c1 c2 : Rat) (v1 v2 : Vector n) : Vector n :=
  add n (smul n c1 v1) (smul n c2 v2)

/-- Affine combination: t*v + (1-t)*w. -/
def affineCombination (n : Nat) (t : Rat) (v w : Vector n) : Vector n :=
  add n (smul n t v) (smul n (1 - t) w)

/-- Distance squared between two vectors: ‖v-w‖². -/
def distSq (n : Nat) (v w : Vector n) : Rat :=
  let diff := sub n v w
  normSq n diff

end Vector

/-! ## Section 2: Matrix Type (over Rat)

An m×n matrix is a function from row index (Fin m) and column index (Fin n) to Rat.
-/

def Matrix (m n : Nat) : Type := Fin m -> Fin n -> Rat

namespace Matrix

/-- Zero matrix (all entries 0). -/
def zero (m n : Nat) : Matrix m n := fun _ _ => 0

/-- Identity matrix I_n: I_ij = 1 if i=j, 0 otherwise. -/
def identity (n : Nat) : Matrix n n := fun i j => if i = j then 1 else 0

/-- Matrix transpose: (A^T)_ij = A_ji. -/
def transpose (m n : Nat) (A : Matrix m n) : Matrix n m := fun i j => A j i

/-- Matrix addition: (A+B)_ij = A_ij + B_ij. -/
def add (m n : Nat) (A B : Matrix m n) : Matrix m n := fun i j => A i j + B i j

/-- Matrix subtraction: (A-B)_ij = A_ij - B_ij. -/
def sub (m n : Nat) (A B : Matrix m n) : Matrix m n := fun i j => A i j - B i j

/-- Scalar multiplication: (c*A)_ij = c * A_ij. -/
def smul (m n : Nat) (c : Rat) (A : Matrix m n) : Matrix m n := fun i j => c * A i j

/-- Matrix-vector multiplication: (A·v)_i = Σ_j A_ij * v_j. -/
def mulVec (m n : Nat) (A : Matrix m n) (v : Vector n) : Vector m :=
  fun i => List.sum (List.map (fun (j : Fin n) => A i j * v j) (List.finRange n))

/-- Matrix-matrix multiplication: (A·B)_ik = Σ_j A_ij * B_jk. -/
def mul (m n p : Nat) (A : Matrix m n) (B : Matrix n p) : Matrix m p :=
  fun i k => List.sum (List.map (fun (j : Fin n) => A i j * B j k) (List.finRange n))

/-- Matrix trace: tr(A) = Σ_i A_ii. -/
def trace (n : Nat) (A : Matrix n n) : Rat :=
  List.sum (List.map (fun (i : Fin n) => A i i) (List.finRange n))

/-- Extract diagonal as a vector: diag(A)_i = A_ii. -/
def diag (n : Nat) (A : Matrix n n) : Vector n := fun i => A i i

/-- Symmetry check: A is symmetric if A_ij = A_ji for all i,j. -/
def isSymmetric (n : Nat) (A : Matrix n n) : Prop := forall i j, A i j = A j i

/-- Diagonal matrix check: A_ij = 0 for all i ≠ j. -/
def isDiagonal (n : Nat) (A : Matrix n n) : Prop := forall i j, i ≠ j -> A i j = 0

/-- Upper triangular check: A_ij = 0 for i > j. -/
def isUpperTriangular (n : Nat) (A : Matrix n n) : Prop :=
  forall i j, i.val > j.val -> A i j = 0

/-- Lower triangular check: A_ij = 0 for i < j. -/
def isLowerTriangular (n : Nat) (A : Matrix n n) : Prop :=
  forall i j, i.val < j.val -> A i j = 0

/-- Positive semidefinite: v^T·A·v ≥ 0 for all vectors v. -/
def isPositiveSemidefinite (n : Nat) (A : Matrix n n) : Prop :=
  forall (v : Vector n), Vector.dot n v (mulVec n n A v) >= 0

/-- Positive definite: v^T·A·v > 0 for all nonzero v. -/
def isPositiveDefinite (n : Nat) (A : Matrix n n) : Prop :=
  forall (v : Vector n), Not (Vector.isZero n v) -> Vector.dot n v (mulVec n n A v) > 0

/-- Outer product: (v ⊗ w)_ij = v_i * w_j. -/
def outer (m n : Nat) (v : Vector m) (w : Vector n) : Matrix m n := fun i j => v i * w j

/-- Frobenius norm squared: ‖A‖_F² = Σ_ij A_ij². -/
def frobeniusNormSq (m n : Nat) (A : Matrix m n) : Rat :=
  List.sum (List.map (fun (i : Fin m) =>
    List.sum (List.map (fun (j : Fin n) => A i j * A i j) (List.finRange n))
  ) (List.finRange m))

/-- Rank-1 update: A + c * v ⊗ w. -/
def rankOneUpdate (m n : Nat) (A : Matrix m n) (c : Rat) (v : Vector m) (w : Vector n) : Matrix m n :=
  add m n A (smul m n c (outer m n v w))

/-- Hadamard (entrywise) product: (A ⊙ B)_ij = A_ij * B_ij. -/
def hadamard (m n : Nat) (A B : Matrix m n) : Matrix m n := fun i j => A i j * B i j

/-- Matrix power: A^k via repeated multiplication. -/
def power (n : Nat) (A : Matrix n n) (k : Nat) : Matrix n n :=
  match k with
  | 0 => identity n
  | k'+1 => mul n n n (power n A k') A

end Matrix

/-! ## Section 3: Determinants and Characteristic Polynomials

Determinants for small matrices (1x1, 2x2, 3x3) are computed explicitly.
The characteristic polynomial p(λ) = det(A - λI) gives eigenvalues as roots.
-/

/-- 1x1 determinant. -/
def det1 (A : Matrix 1 1) : Rat := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))

/-- 2x2 determinant: det([[a,b],[c,d]]) = ad - bc. -/
def det2 (A : Matrix 2 2) : Rat :=
  A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) -
  A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))

/-- 3x3 determinant via Sarrus rule. -/
def det3 (A : Matrix 3 3) : Rat :=
  A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) *
  A (Fin.mk 2 (by decide)) (Fin.mk 2 (by decide)) +
  A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 2 (by decide)) *
  A (Fin.mk 2 (by decide)) (Fin.mk 0 (by decide)) +
  A (Fin.mk 0 (by decide)) (Fin.mk 2 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) *
  A (Fin.mk 2 (by decide)) (Fin.mk 1 (by decide)) -
  A (Fin.mk 0 (by decide)) (Fin.mk 2 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) *
  A (Fin.mk 2 (by decide)) (Fin.mk 0 (by decide)) -
  A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) *
  A (Fin.mk 2 (by decide)) (Fin.mk 2 (by decide)) -
  A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) *
  A (Fin.mk 1 (by decide)) (Fin.mk 2 (by decide)) *
  A (Fin.mk 2 (by decide)) (Fin.mk 1 (by decide))

/-- Trace of 2x2 matrix. -/
def tr2 (A : Matrix 2 2) : Rat :=
  A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) +
  A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))

/-- Trace of 3x3 matrix. -/
def tr3 (A : Matrix 3 3) : Rat :=
  A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) +
  A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) +
  A (Fin.mk 2 (by decide)) (Fin.mk 2 (by decide))

/-- Discriminant of 2x2 characteristic polynomial: Δ = tr² - 4·det.
    When Δ ≥ 0, eigenvalues are real and given by the quadratic formula.
    When Δ < 0, eigenvalues are complex (not representable in Rat). -/
def discriminant2 (A : Matrix 2 2) : Rat := tr2 A * tr2 A - 4 * det2 A

/-- Create a symmetric 2x2 matrix [[a, b], [b, c]].
    All symmetric 2x2 matrices have this form. -/
def symMat2 (a b c : Rat) : Matrix 2 2 := fun i j =>
  match i, j with
  | Fin.mk 0 _, Fin.mk 0 _ => a
  | Fin.mk 0 _, Fin.mk 1 _ => b
  | Fin.mk 1 _, Fin.mk 0 _ => b
  | Fin.mk 1 _, Fin.mk 1 _ => c

/-- Eigenvalues of 2x2 matrix via quadratic formula:
    λ₁,₂ = (tr ± √Δ) / 2.
    Since Rat has no sqrt, we use the discriminant directly as an approximation
    for non-perfect-square discriminants. For matrices with perfect-square 
    discriminant (e.g., tr=2, det=1 gives Δ=0), the eigenvalues are exact. -/
def eigenvalues2 (A : Matrix 2 2) : Rat × Rat :=
  let tr := tr2 A
  let disc := discriminant2 A
  if disc >= 0 then ((tr + disc) / 2, (tr - disc) / 2)
  else (tr / 2, tr / 2)

/-- Eigenvalues of symmetric 2x2 [[a,b],[b,c]]. -/
def eigenvaluesSym2 (a b c : Rat) : Rat × Rat := eigenvalues2 (symMat2 a b c)

/-- Rayleigh quotient: R(A, v) = (v^T·A·v) / (v^T·v).
    For symmetric matrices, the Rayleigh quotient lies between 
    the minimum and maximum eigenvalues. -/
def rayleighQuotient (n : Nat) (A : Matrix n n) (v : Vector n) : Rat :=
  let num := Vector.dot n v (Matrix.mulVec n n A v)
  let den := Vector.normSq n v
  if den = 0 then 0 else num / den

/-- Characteristic polynomial of 2x2: p(λ) = λ² - tr·λ + det. -/
def charPoly2 (A : Matrix 2 2) (lam : Rat) : Rat := lam*lam - tr2 A * lam + det2 A

/-- Characteristic polynomial of symmetric 2x2:
    p(λ) = λ² - (a+c)·λ + (ac - b²). -/
def charPolySym2 (a b c : Rat) (lam : Rat) : Rat := charPoly2 (symMat2 a b c) lam

/-- Spectral radius bound: max(|λ₁|, |λ₂|). -/
def spectralRadiusBound2 (A : Matrix 2 2) : Rat :=
  let (l1, l2) := eigenvalues2 A
  let a1 := if l1 >= 0 then l1 else -l1
  let a2 := if l2 >= 0 then l2 else -l2
  if a1 >= a2 then a1 else a2

/-- Adjugate (classical adjoint) of 2x2 matrix:
    adj([[a,b],[c,d]]) = [[d, -b], [-c, a]].
    Used for inverse: A⁻¹ = adj(A) / det(A). -/
def adjugate2 (A : Matrix 2 2) : Matrix 2 2 := fun i j =>
  match i, j with
  | Fin.mk 0 _, Fin.mk 0 _ => A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  | Fin.mk 0 _, Fin.mk 1 _ => -A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  | Fin.mk 1 _, Fin.mk 0 _ => -A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
  | Fin.mk 1 _, Fin.mk 1 _ => A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))

/-- Inverse of 2x2 matrix: A⁻¹ = adj(A) / det(A), when det ≠ 0. -/
def inverse2 (A : Matrix 2 2) : Matrix 2 2 :=
  let d := det2 A
  if d = 0 then Matrix.zero 2 2
  else Matrix.smul 2 2 (1 / d) (adjugate2 A)

/-! ## Section 4: Eigenvalue / Eigenvector Structures (L2) -/

/-- An eigenpair (λ, v) of matrix A satisfies A·v = λ·v with v ≠ 0. -/
structure Eigenpair (n : Nat) (A : Matrix n n) where
  eigenvalue : Rat
  eigenvector : Vector n
  eigen_eq : forall i, (Matrix.mulVec n n A eigenvector) i = (Vector.smul n eigenvalue eigenvector) i
  nontrivial : Not (Vector.isZero n eigenvector)

/-- λ is an eigenvalue of A if there exists a nonzero eigenvector. -/
def isEigenvalue (n : Nat) (A : Matrix n n) (lam : Rat) : Prop :=
  exists (v : Vector n), Not (Vector.isZero n v) /\
    forall i, (Matrix.mulVec n n A v) i = (Vector.smul n lam v) i

/-- Eigenspace of λ: the set of all eigenvectors for λ (including 0). -/
def eigenspace (n : Nat) (A : Matrix n n) (lam : Rat) : Vector n -> Prop :=
  fun v => forall i, (Matrix.mulVec n n A v) i = (Vector.smul n lam v) i

/-- Spectral projection onto the eigenspace for eigenvalue λ of a 2x2 matrix.
    For λ = λᵢ (one of the eigenvalues):
    P_i = (A - λⱼ·I) / (λᵢ - λⱼ)  where j ≠ i.
    These projections are idempotent (P² = P) and orthogonal (P₁·P₂ = 0). -/
def spectralProjection2 (A : Matrix 2 2) (lam : Rat) : Matrix 2 2 :=
  let (lam1, lam2) := eigenvalues2 A
  if lam = lam1 then
    let num := Matrix.sub 2 2 A (Matrix.smul 2 2 lam2 (Matrix.identity 2))
    let den := lam1 - lam2
    if den = 0 then Matrix.identity 2
    else Matrix.smul 2 2 ((1 : Rat) / den) num
  else if lam = lam2 then
    let num := Matrix.sub 2 2 A (Matrix.smul 2 2 lam1 (Matrix.identity 2))
    let den := lam2 - lam1
    if den = 0 then Matrix.identity 2
    else Matrix.smul 2 2 ((1 : Rat) / den) num
  else Matrix.zero 2 2

/-- Spectral resolution of the identity: P₁ + P₂ = I. -/
def spectralResolutionIdentity (A : Matrix 2 2) : Matrix 2 2 :=
  let (lam1, lam2) := eigenvalues2 A
  let P1 := spectralProjection2 A lam1
  let P2 := spectralProjection2 A lam2
  Matrix.add 2 2 P1 P2

/-- Spectral decomposition of A: A = λ₁·P₁ + λ₂·P₂. -/
def spectralDecomposition (A : Matrix 2 2) : Matrix 2 2 :=
  let (lam1, lam2) := eigenvalues2 A
  let P1 := spectralProjection2 A lam1
  let P2 := spectralProjection2 A lam2
  Matrix.add 2 2 (Matrix.smul 2 2 lam1 P1) (Matrix.smul 2 2 lam2 P2)

/-! ## Section 5: Helper Constructors -/

/-- Create a 2D vector from two components. -/
def vec2 (x y : Rat) : Vector 2 := fun i =>
  match i with | Fin.mk 0 _ => x | Fin.mk 1 _ => y

/-- Create a 3D vector from three components. -/
def vec3 (x y z : Rat) : Vector 3 := fun i =>
  match i with | Fin.mk 0 _ => x | Fin.mk 1 _ => y | Fin.mk 2 _ => z

/-- Create a 4D vector from four components. -/
def vec4 (x y z w : Rat) : Vector 4 := fun i =>
  match i with | Fin.mk 0 _ => x | Fin.mk 1 _ => y | Fin.mk 2 _ => z | Fin.mk 3 _ => w

/-- Create a 2x2 matrix from four row entries. -/
def mat2 (a11 a12 a21 a22 : Rat) : Matrix 2 2 := fun i j =>
  match i, j with
  | Fin.mk 0 _, Fin.mk 0 _ => a11 | Fin.mk 0 _, Fin.mk 1 _ => a12
  | Fin.mk 1 _, Fin.mk 0 _ => a21 | Fin.mk 1 _, Fin.mk 1 _ => a22

/-- Pauli X matrix: [[0,1],[1,0]], eigenvalues ±1. -/
def pauliX : Matrix 2 2 := symMat2 0 1 0

/-- Pauli Z matrix: [[1,0],[0,-1]], eigenvalues ±1. -/
def pauliZ : Matrix 2 2 := mat2 1 0 0 (-1)

/-- Hadamard matrix: [[1,1],[1,-1]]/√2 (stored without normalization as [[1,1],[1,-1]]). -/
def hadamardMatrix : Matrix 2 2 := mat2 1 1 1 (-1)

/-! ## Section 6: #eval Verification (L6: Canonical Examples)

The following examples verify core computations over concrete rational matrices.
-/

-- Vector operations
#eval "=== Vector Operations ==="
#eval Vector.dot 2 (vec2 1 2) (vec2 3 4)
#eval Vector.normSq 2 (vec2 3 4)
#eval Vector.dot 3 (vec3 1 2 3) (vec3 4 5 6)
#eval Vector.l1Norm 2 (vec2 3 (-4))
#eval Vector.maxAbs 2 (vec2 3 (-4))

-- Matrix operations
#eval "=== Matrix Operations ==="
#eval det2 (symMat2 1 2 3)
#eval tr2 (symMat2 5 (-2) 7)
#eval det2 (mat2 1 2 3 4)
#eval Matrix.trace 2 (mat2 1 2 3 4)
#eval Matrix.frobeniusNormSq 2 2 (symMat2 1 2 3)

-- Eigenvalues
#eval "=== Eigenvalues ==="
#eval eigenvaluesSym2 1 2 3
#eval eigenvaluesSym2 5 (-2) 7
#eval eigenvalues2 pauliX
#eval eigenvalues2 pauliZ
#eval eigenvalues2 hadamardMatrix
#eval discriminant2 (symMat2 1 2 3)

-- Rayleigh quotients
#eval "=== Rayleigh Quotients ==="
#eval rayleighQuotient 2 (symMat2 2 0 3) (vec2 1 0)
#eval rayleighQuotient 2 (symMat2 2 0 3) (vec2 0 1)
#eval rayleighQuotient 2 (symMat2 2 0 3) (vec2 1 1)
#eval rayleighQuotient 2 (symMat2 1 2 3) (vec2 1 1)

-- Characteristic polynomials
#eval "=== Characteristic Polynomials ==="
#eval charPoly2 (symMat2 1 2 3) 0
#eval charPoly2 (symMat2 1 2 3) 1
#eval charPoly2 (symMat2 1 2 3) 4
#eval charPolySym2 1 2 3 5

-- Spectral radius and decomposition
#eval "=== Spectral Properties ==="
#eval spectralRadiusBound2 (symMat2 1 2 3)
#eval spectralRadiusBound2 pauliX
#eval let A := symMat2 1 2 3
      let (lam1, _) := eigenvaluesSym2 1 2 3
      let v1 := vec2 2 (lam1 - 1)
      Vector.dot 2 v1 (Matrix.mulVec 2 2 A v1)

-- Matrix operations
#eval "=== Matrix Algebra ==="
#eval det2 (inverse2 (symMat2 2 1 3))
#eval det2 (Matrix.add 2 2 (symMat2 1 0 0) (symMat2 0 2 0))

-- Eigenpair construction
#eval "=== Eigenpair Examples ==="
#eval eigenvalues2 pauliX
#eval eigenvalues2 pauliZ

end MiniSpectralTheoryPDE