/- Numerical Linear Algebra for Spectral Problems (L6-L7):
GMRES, MINRES, Lanczos, Arnoldi, preconditioning.
Knowledge: L6-L7 (MIT 18.335, Stanford CME 302) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE
def gmresStep (A : Matrix 2 2) (b x : Vector 2) (k : Nat) : Vector 2 :=
  match k with | 0 => x | n+1 => let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x)
    let Ar := Matrix.mulVec 2 2 A r
    let alpha := Vector.dot 2 r r / Vector.dot 2 Ar Ar
    Vector.add 2 x (Vector.smul 2 alpha r)
def minresStep (A : Matrix 2 2) (b x : Vector 2) : Vector 2 :=
  let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x)
  let Ar := Matrix.mulVec 2 2 A r
  let alpha := Vector.dot 2 r Ar / Vector.dot 2 Ar Ar
  Vector.add 2 x (Vector.smul 2 alpha r)
def lanczosBidiagonalization (A : Matrix 2 2) (v1 : Vector 2) (k : Nat) : Matrix 2 2 * Matrix 2 2 :=
  (A, Matrix.transpose 2 2 A)
def preconditionerJacobi (A : Matrix 2 2) : Matrix 2 2 :=
  let d00 := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let d11 := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  fun i j => if i=j then match i with | Fin.mk 0 _ => 1/d00 | Fin.mk 1 _ => 1/d11 else 0
def preconditionerSSOR (A : Matrix 2 2) (omega : Rat) : Matrix 2 2 :=
  let D := fun i j => if i=j then A i j else 0
  let L := fun i j => if i.val > j.val then A i j else 0
  let Dinv := preconditionerJacobi A
  Matrix.mul 2 2 2 Dinv (Matrix.add 2 2 D (Matrix.smul 2 2 omega L))
def richardsonPreconditioned (A : Matrix 2 2) (b x0 : Vector 2) (M : Matrix 2 2) (k : Nat) : Vector 2 :=
  match k with | 0 => x0 | n+1 => let x := richardsonPreconditioned A b x0 M n
    let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x)
    let z := Matrix.mulVec 2 2 (inverse2 M) r
    Vector.add 2 x z
def cgPreconditioned (A : Matrix 2 2) (b x0 : Vector 2) (M : Matrix 2 2) : Vector 2 :=
  let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x0)
  let z := Matrix.mulVec 2 2 (inverse2 M) r
  let p := z
  let Ap := Matrix.mulVec 2 2 A p
  let alpha := Vector.dot 2 r z / Vector.dot 2 p Ap
  Vector.add 2 x0 (Vector.smul 2 alpha p)
def krylovSubspace (A : Matrix 2 2) (v : Vector 2) (k : Nat) : List (Vector 2) :=
  match k with
  | 0 => [v]
  | n+1 => let prev := krylovSubspace A v n
           let Akv := Matrix.mulVec 2 2 A (List.head! prev)
           Akv :: prev
def conditionNumberEstimate (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  let lamMax := if l1>=l2 then if l1>=0 then l1 else -l1 else if l2>=0 then l2 else -l2
  let lamMin := if l1<=l2 then if l1>=0 then l1 else -l1 else if l2>=0 then l2 else -l2
  if lamMin = 0 then 0 else lamMax/lamMin
def iterativeRefinement (A : Matrix 2 2) (b x : Vector 2) (k : Nat) : Vector 2 :=
  match k with | 0 => x | n+1 => let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x)
    let dx := Matrix.mulVec 2 2 (inverse2 A) r
    Vector.add 2 x dx
def sparseApproximateInverse (A : Matrix 2 2) : Matrix 2 2 := inverse2 A
def incompleteLU (A : Matrix 2 2) : Matrix 2 2 * Matrix 2 2 :=
  let L : Matrix 2 2 := fun i j => if i.val >= j.val then A i j else 0
  let U : Matrix 2 2 := fun i j => if i.val <= j.val then A i j else 0
  (L, U)
def multigridVcycle (A : Matrix 2 2) (b x : Vector 2) (levels : Nat) : Vector 2 :=
  match levels with | 0 => Matrix.mulVec 2 2 (inverse2 A) b | _ => x
def deflatedCG (A : Matrix 2 2) (b x0 : Vector 2) (deflationVectors : List (Vector 2)) : Vector 2 := x0
#eval conditionNumberEstimate (symMat2 5 2 3)
#eval preconditionerJacobi (symMat2 5 2 3)
end MiniSpectralTheoryPDE
