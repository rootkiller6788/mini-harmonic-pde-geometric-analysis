/- Spectrum Definitions and Properties (L2-L3)
Spectral radius, resolvent, eigenvalue gap, condition number,
Gershgorin discs, functional calculus, Jordan form.
Knowledge: L2 Core Concepts, L3 Math Structures -/
import MiniSpectralTheoryPDE.Core.Basic
namespace MiniSpectralTheoryPDE

/-! ## Spectral Radius -/
def spectralRadiusSym2 (a b c : Rat) : Rat := spectralRadiusBound2 (symMat2 a b c)
def spectralRadius2 (A : Matrix 2 2) : Rat := spectralRadiusBound2 A

/-! ## Resolvent Operator R(λ) = (A - λI)⁻¹ -/
def resolvent2 (A : Matrix 2 2) (lam : Rat) : Matrix 2 2 :=
  let B : Matrix 2 2 := fun i j => A i j - (if i = j then lam else 0)
  let d := det2 B
  if d = 0 then Matrix.zero 2 2
  else Matrix.smul 2 2 ((1 : Rat)/d) (fun i j => match i,j with
    | Fin.mk 0 _, Fin.mk 0 _ => B (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
    | Fin.mk 0 _, Fin.mk 1 _ => -B (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
    | Fin.mk 1 _, Fin.mk 0 _ => -B (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
    | Fin.mk 1 _, Fin.mk 1 _ => B (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)))

/-! ## Resolvent Set: ρ(A) = {λ : det(A-λI) ≠ 0} -/
def isInResolventSet (A : Matrix 2 2) (lam : Rat) : Prop :=
  let B : Matrix 2 2 := fun i j => A i j - (if i = j then lam else 0)
  det2 B ≠ 0

/-! ## Eigenvalue Gap: |λ₁ - λ₂| -/
def eigenvalueGap2 (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  if l1-l2 >= 0 then l1-l2 else l2-l1

/-! ## Eigenvalue Spacing Ratio (for random matrix theory) -/
def eigenvalueSpacingRatio (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  let gap := eigenvalueGap2 A
  if gap = 0 then 0
  else
    let mean := (if l1>=0 then l1 else -l1) + (if l2>=0 then l2 else -l2)
    if mean = 0 then 0 else gap / mean

/-! ## Condition Number κ(A) = λmax/λmin (for positive definite) -/
def conditionNumber2 (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  let al1 := if l1>=0 then l1 else -l1
  let al2 := if l2>=0 then l2 else -l2
  let lmax := if al1>=al2 then al1 else al2
  let lmin := if al1<=al2 then al1 else al2
  if lmin=0 then 0 else lmax/lmin

/-! ## Eigenvalue Counting Function N(x) = #{λᵢ ≤ x} -/
def eigenvalueCount2 (A : Matrix 2 2) (x : Rat) : Nat :=
  let (l1,l2) := eigenvalues2 A
  (if l1 <= x then 1 else 0) + (if l2 <= x then 1 else 0)

/-! ## Jordan Block J(λ) = [[λ,1],[0,λ]] -/
def jordanBlock2 (lam : Rat) : Matrix 2 2 := fun i j =>
  match i,j with
  | Fin.mk 0 _, Fin.mk 0 _ => lam | Fin.mk 0 _, Fin.mk 1 _ => 1
  | Fin.mk 1 _, Fin.mk 0 _ => 0 | Fin.mk 1 _, Fin.mk 1 _ => lam

/-! ## Jordan Block Properties: det(J-λI) = 0, tr(J) = 2λ -/
def jordanEigenvalues (lam : Rat) : Rat × Rat := (lam, lam)

/-! ## Functional Calculus f(A) = f(λ₁)·P₁ + f(λ₂)·P₂ -/
def functionalCalculus2 (A : Matrix 2 2) (f : Rat -> Rat) : Matrix 2 2 :=
  let (l1,l2) := eigenvalues2 A
  let P1 := spectralProjection2 A l1
  let P2 := spectralProjection2 A l2
  Matrix.add 2 2 (Matrix.smul 2 2 (f l1) P1) (Matrix.smul 2 2 (f l2) P2)

/-! ## Matrix Exponential: exp(A) via spectral calculus -/
def matrixExponential2 (A : Matrix 2 2) (t : Rat) : Matrix 2 2 :=
  functionalCalculus2 A (fun x => 1 + t*x + (t*x)*(t*x)/2 + (t*x)*(t*x)*(t*x)/6)

/-! ## Matrix Polynomial: p(A) = a·A² + b·A + c·I -/
def matrixPolynomial2 (a b c : Rat) (A : Matrix 2 2) : Matrix 2 2 :=
  let A2 := Matrix.mul 2 2 2 A A
  let bA := Matrix.smul 2 2 b A
  let cI := Matrix.smul 2 2 c (Matrix.identity 2)
  Matrix.add 2 2 (Matrix.add 2 2 (Matrix.smul 2 2 a A2) bA) cI

/-! ## Gershgorin Disc Centers and Radii -/
def gershgorinCenter1 (A : Matrix 2 2) : Rat := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
def gershgorinRadius1 (A : Matrix 2 2) : Rat :=
  let a := A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  if a >= 0 then a else -a
def gershgorinCenter2 (A : Matrix 2 2) : Rat := A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
def gershgorinRadius2 (A : Matrix 2 2) : Rat :=
  let a := A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
  if a >= 0 then a else -a

/-! ## Pseudospectrum: Λε(A) = {λ : |det(A-λI)| ≤ ε} -/
def isInPseudospectrum (A : Matrix 2 2) (eps : Rat) (lam : Rat) : Prop :=
  let B : Matrix 2 2 := fun i j => A i j - (if i = j then lam else 0)
  let d := det2 B
  (if d >= 0 then d else -d) <= eps

/-! ## Commutation Check for 2x2 Matrices -/
def commute2 (A B : Matrix 2 2) : Bool :=
  let AB := Matrix.mul 2 2 2 A B
  let BA := Matrix.mul 2 2 2 B A
  (AB (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) == BA (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))) &&
  (AB (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide)) == BA (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))) &&
  (AB (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) == BA (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))) &&
  (AB (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)) == BA (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide)))

/-! ## Diagonalization Check -/
def isDiagonalizable2 (A : Matrix 2 2) : Bool := discriminant2 A >= 0

/-! ## Similarity Transform: B = P⁻¹·A·P -/
def similarityTransform2 (A P : Matrix 2 2) : Matrix 2 2 :=
  let Pinv := inverse2 P
  Matrix.mul 2 2 2 (Matrix.mul 2 2 2 Pinv A) P

/-! ## #eval Examples -/
#eval "=== Spectrum Examples ==="
#eval spectralRadiusSym2 1 2 3
#eval spectralRadius2 (symMat2 4 1 3)
#eval eigenvalueGap2 (symMat2 1 2 3)
#eval eigenvalueSpacingRatio (symMat2 5 2 3)
#eval conditionNumber2 (symMat2 4 0 1)
#eval eigenvalueCount2 (symMat2 1 2 3) 2
#eval eigenvalueCount2 (symMat2 1 2 3) 5

#eval "=== Gershgorin Discs ==="
#eval gershgorinCenter1 (symMat2 5 2 3)
#eval gershgorinRadius1 (symMat2 5 2 3)

#eval "=== Jordan and Diagonalization ==="
#eval eigenvalues2 (jordanBlock2 3)
#eval isDiagonalizable2 (jordanBlock2 3)
#eval isDiagonalizable2 (symMat2 1 2 3)

#eval "=== Commutation ==="
#eval commute2 (symMat2 1 0 2) (symMat2 3 0 4)
#eval commute2 (symMat2 1 2 3) (symMat2 2 0 1)

#eval "=== Matrix Exponential ==="
#eval det2 (matrixExponential2 (symMat2 0 0 0) 1)

end MiniSpectralTheoryPDE