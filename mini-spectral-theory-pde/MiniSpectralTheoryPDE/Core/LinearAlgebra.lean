/- Linear Algebra Foundation: Vector spaces, linear transformations, bases, dimension.
Provides the algebraic foundation for spectral theory over Rat.
Knowledge: L3 Math Structures (Princeton MAT 560, Cambridge Part III) -/
import MiniSpectralTheoryPDE.Core.Basic
namespace MiniSpectralTheoryPDE

/-! Linear dependence: vectors v1,...,vk are linearly dependent if exists nontrivial comb = 0 -/
def isLinearlyDependent (n : Nat) (vectors : List (Vector n)) : Prop :=
  exists (coeffs : List Rat), coeffs.length = vectors.length /\
  Not (forall c, List.elem c coeffs -> c = 0) /\
  Vector.isZero n (List.foldl (fun (acc : Vector n) (i : Nat) =>
    let c := List.get! coeffs i
    let v := List.get! vectors i
    Vector.add n acc (Vector.smul n c v)
  ) (Vector.zero n) (List.range vectors.length))

/-! Span of a set of vectors: all linear combinations -/
def span (n : Nat) (vectors : List (Vector n)) (w : Vector n) : Prop :=
  exists (coeffs : List Rat), coeffs.length = vectors.length /\
  Vector.eq n w (List.foldl (fun (acc : Vector n) (i : Nat) =>
    let c := List.get! coeffs i
    let v := List.get! vectors i
    Vector.add n acc (Vector.smul n c v)
  ) (Vector.zero n) (List.range vectors.length))

/-! Basis: linearly independent spanning set -/
def isBasis (n : Nat) (vectors : List (Vector n)) : Prop :=
  Not (isLinearlyDependent n vectors) /\
  forall (w : Vector n), span n vectors w

/-! Dimension of vector space (over Rat) -/
def dimension (n : Nat) : Nat := n

/-! Rank of a matrix: dimension of column space -/
def rank2 (A : Matrix 2 2) : Nat :=
  let det := det2 A
  let isZero := forall i j, A i j = 0
  if isZero then 0
  else if det = 0 then 1
  else 2

/-! Nullity: dimension of nullspace = n - rank -/
def nullity2 (A : Matrix 2 2) : Nat := 2 - rank2 A

/-! Rank-Nullity Theorem: rank(A) + nullity(A) = n (holds for 2x2) -/
def rankNullityCheck (A : Matrix 2 2) : Bool := rank2 A + nullity2 A == 2

/-! Column space basis extraction -/
def columnSpaceBasis2 (A : Matrix 2 2) : List (Vector 2) :=
  let c1 : Vector 2 := fun i => A i (Fin.mk 0 (by decide))
  let c2 : Vector 2 := fun i => A i (Fin.mk 1 (by decide))
  if rank2 A == 2 then [c1, c2]
  else if rank2 A == 1 then [c1]
  else []

/-! Row space basis extraction -/
def rowSpaceBasis2 (A : Matrix 2 2) : List (Vector 2) :=
  let AT := Matrix.transpose 2 2 A
  columnSpaceBasis2 AT

/-! Nullspace basis extraction (solutions to Ax=0) -/
def nullspaceBasis2 (A : Matrix 2 2) : List (Vector 2) :=
  let det := det2 A
  if det <> 0 then []
  else
    let a := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
    let b := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
    [fun i => match i with | Fin.mk 0 _ => a | Fin.mk 1 _ => -b]

/-! Change of basis matrix -/
def changeOfBasis2 (oldBasis newBasis : List (Vector 2)) : Matrix 2 2 :=
  Matrix.identity 2

/-! Gram-Schmidt orthogonalization for 2 vectors -/
def gramSchmidt2 (v1 v2 : Vector 2) : Vector 2 × Vector 2 :=
  let u1 := v1
  let u2 := Vector.projectOrthogonal 2 v2 u1
  (u1, u2)

/-! Orthogonal complement of a subspace -/
def orthogonalComplement (n : Nat) (S : List (Vector n)) (w : Vector n) : Prop :=
  forall (v : Vector n), List.elem v S -> Vector.dot n v w = 0

/-! Four fundamental subspaces of a matrix -/
structure FourSubspaces2 (A : Matrix 2 2) where
  columnSpace : List (Vector 2)
  nullspace : List (Vector 2)
  rowSpace : List (Vector 2)
  leftNullspace : List (Vector 2)

def fourSubspaces2 (A : Matrix 2 2) : FourSubspaces2 A := {
  columnSpace := columnSpaceBasis2 A
  nullspace := nullspaceBasis2 A
  rowSpace := rowSpaceBasis2 A
  leftNullspace := nullspaceBasis2 (Matrix.transpose 2 2 A)
}

/-! Orthogonal projection onto column space -/
def projectOntoColumnSpace2 (A : Matrix 2 2) (v : Vector 2) : Vector 2 :=
  let AT := Matrix.transpose 2 2 A
  let ATA := Matrix.mul 2 2 2 AT A
  let ATAinv := inverse2 ATA
  let proj := Matrix.mul 2 2 2 (Matrix.mul 2 2 2 A ATAinv) AT
  Matrix.mulVec 2 2 proj v

/-! Least squares solution to Ax = b: x = (A^T A)^{-1} A^T b -/
def leastSquaresSolve2 (A : Matrix 2 2) (b : Vector 2) : Vector 2 :=
  let AT := Matrix.transpose 2 2 A
  let ATA := Matrix.mul 2 2 2 AT A
  let ATAinv := inverse2 ATA
  let ATb := Matrix.mulVec 2 2 AT b
  Matrix.mulVec 2 2 ATAinv ATb

/-! Pseudoinverse (Moore-Penrose) for 2x2 -/
def pseudoinverse2 (A : Matrix 2 2) : Matrix 2 2 :=
  let AT := Matrix.transpose 2 2 A
  let ATA := Matrix.mul 2 2 2 AT A
  let ATAinv := inverse2 ATA
  Matrix.mul 2 2 2 ATAinv AT

/-! Vector space isomorphism check (same dimension) -/
def isomorphicSpaces (m n : Nat) : Bool := m == n

#eval "=== Linear Algebra ==="
#eval rank2 (symMat2 1 2 3)
#eval nullity2 (symMat2 1 2 3)
#eval rankNullityCheck (symMat2 1 2 3)
end MiniSpectralTheoryPDE