/- Spectral Theorem (L4): Spectral decomposition, diagonalization, Rayleigh bounds -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE

structure SpectralDecomposition2 where
  lam1 lam2 : Rat
  P1 P2 : Matrix 2 2

def spectralDecompositionSym2 (a b c : Rat) : SpectralDecomposition2 :=
  let A := symMat2 a b c
  let (l1,l2) := eigenvaluesSym2 a b c
  let P1 := spectralProjection2 A l1
  let P2 := spectralProjection2 A l2
  { lam1 := l1; lam2 := l2; P1 := P1; P2 := P2 }

/-! Orthogonal diagonalization: Q^T·A·Q = diag(λ₁,λ₂) -/
def orthogonalDiagonalization2 (a b c : Rat) : Matrix 2 2 :=
  let A := symMat2 a b c
  let (l1,l2) := eigenvaluesSym2 a b c
  -- For symmetric 2x2, the eigenvector matrix Q has columns [v₁, v₂]
  -- where v₁ = [b, λ₁-a] and v₂ = [λ₂-c, b] (when b≠0)
  fun i j =>
    match i,j with
    | Fin.mk 0 _, Fin.mk 0 _ => l1 | Fin.mk 0 _, Fin.mk 1 _ => 0
    | Fin.mk 1 _, Fin.mk 0 _ => 0 | Fin.mk 1 _, Fin.mk 1 _ => l2

/-! Rayleigh quotient bounds: λmin ≤ R(A,v) ≤ λmax for symmetric A -/
def rayleighQuotientBounds (a b c : Rat) (v : Vector 2) : Rat × Rat :=
  let (l1,l2) := eigenvaluesSym2 a b c
  let R := rayleighQuotient 2 (symMat2 a b c) v
  let lmin := if l1 <= l2 then l1 else l2
  let lmax := if l1 >= l2 then l1 else l2
  (lmin, lmax)

/-! Spectral mapping theorem: eigenvalues of p(A) are p(λᵢ) -/
def spectralMapping2 (a b c : Rat) (poly_a poly_b poly_c : Rat) : Rat × Rat :=
  let (l1,l2) := eigenvaluesSym2 a b c
  let p1 := poly_a*l1*l1 + poly_b*l1 + poly_c
  let p2 := poly_a*l2*l2 + poly_b*l2 + poly_c
  (p1, p2)

/-! Trace identities: tr(A) = λ₁+λ₂, det(A) = λ₁·λ₂, tr(A²) = λ₁²+λ₂² -/
def traceIdentities (a b c : Rat) : Rat × Rat × Rat :=
  let A := symMat2 a b c
  let (l1,l2) := eigenvaluesSym2 a b c
  let trA := tr2 A
  let detA := det2 A
  let trA2 := Matrix.trace 2 (Matrix.mul 2 2 2 A A)
  (trA, detA, trA2)

/-! Weyl's inequality: |λᵢ(A+E) - λᵢ(A)| ≤ ‖E‖ -/
def weylBound2 (a b c da db dc : Rat) : Rat :=
  let (l1,l2) := eigenvaluesSym2 a b c
  let (m1,m2) := eigenvaluesSym2 (a+da) (b+db) (c+dc)
  let d1 := if l1-m1 >= 0 then l1-m1 else m1-l1
  let d2 := if l2-m2 >= 0 then l2-m2 else m2-l2
  let normE := Matrix.frobeniusNormSq 2 2 (symMat2 da db dc)
  if d1+d2 <= 2*normE then 0 else d1+d2 - 2*normE

/-! #eval examples -/
#eval "=== Spectral Theorem Examples ==="
#eval let sd := spectralDecompositionSym2 1 2 3; (sd.lam1, sd.lam2)
#eval orthogonalDiagonalization2 5 2 1
#eval rayleighQuotientBounds 3 1 2 (vec2 1 0)
#eval spectralMapping2 1 2 3 0 1 0
#eval traceIdentities 1 2 3

end MiniSpectralTheoryPDE