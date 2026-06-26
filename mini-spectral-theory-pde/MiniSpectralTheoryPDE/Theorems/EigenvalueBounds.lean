/- Eigenvalue Bounds: Weyl, Hoffman-Wielandt, Lidskii, Gershgorin, Ky Fan.
Knowledge: L4 Fundamental Theorems -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE
def weylInequalityCheck (a b c da db dc : Rat) : Rat := weylBound2 a b c da db dc
def hoffmanWielandtBound2 (A E : Matrix 2 2) : Rat := let (l1,l2) := eigenvalues2 A; let B := Matrix.add 2 2 A E; let (m1,m2) := eigenvalues2 B; let d1 := if l1-m1 >= 0 then l1-m1 else m1-l1; let d2 := if l2-m2 >= 0 then l2-m2 else m2-l2; d1*d1 + d2*d2
def lidskiiInequality2 (A B : Matrix 2 2) : Rat := let (l1,l2) := eigenvalues2 A; let (m1,m2) := eigenvalues2 B; (if l1>=0 then l1 else -l1) + (if l2>=0 then l2 else -l2) + (if m1>=0 then m1 else -m1) + (if m2>=0 then m2 else -m2)
def bauerFikeBound2 (A E : Matrix 2 2) : Rat := let kappa := conditionNumber2 A; let normE := Matrix.frobeniusNormSq 2 2 E; kappa * normE
def kyFanNorm2 (A : Matrix 2 2) (k : Nat) : Rat := let (l1,l2) := eigenvalues2 A; let al1 := if l1>=0 then l1 else -l1; let al2 := if l2>=0 then l2 else -l2; match k with | 0 => 0 | 1 => if al1>=al2 then al1 else al2 | _ => al1+al2
def rayleighRitzErrorBound (A : Matrix 2 2) (v : Vector 2) : Rat := let R := rayleighQuotient 2 A v; let Av := Matrix.mulVec 2 2 A v; let resid := Vector.sub 2 Av (Vector.smul 2 R v); Vector.normSq 2 resid
def eigenvalueInclusionInterval (A : Matrix 2 2) (v : Vector 2) : Rat * Rat := let R := rayleighQuotient 2 A v; let err := rayleighRitzErrorBound A v; (R - err, R + err)
def kryloffBogoliubovBound (A : Matrix 2 2) (v : Vector 2) : Rat := let R := rayleighQuotient 2 A v; let A2 := Matrix.mul 2 2 2 A A; let A2v := Matrix.mulVec 2 2 A2 v; let RA2 := Vector.dot 2 v A2v / Vector.normSq 2 v; RA2 - R*R
def eigenvalueMultiplicityCheck (A : Matrix 2 2) : Nat := if discriminant2 A = 0 then 2 else 1
#eval weylInequalityCheck 1 2 3 1 1 1
#eval bauerFikeBound2 (symMat2 1 2 3) (symMat2 1 0 0)
#eval rayleighRitzErrorBound (symMat2 5 2 3) (vec2 1 0)
#eval eigenvalueInclusionInterval (symMat2 5 2 3) (vec2 1 0)
end MiniSpectralTheoryPDE

def generalizedWeylBound (A B : Matrix 2 2) : Rat :=
  let (a1,a2) := eigenvalues2 A; let (b1,b2) := eigenvalues2 B
  let d1 := if a1-b1 >=0 then a1-b1 else b1-a1
  let d2 := if a2-b2 >=0 then a2-b2 else b2-a2
  d1 + d2
def spectralVariationBound (A B : Matrix 2 2) : Rat :=
  let specA := spectralRadiusBound2 A
  let specB := spectralRadiusBound2 B
  if specA >= specB then specA - specB else specB - specA
def relativeEigenvaluePerturbation (A E : Matrix 2 2) : Rat :=
  let kappa := conditionNumber2 A
  let normE := Matrix.frobeniusNormSq 2 2 E
  let normA := Matrix.frobeniusNormSq 2 2 A
  if normA = 0 then 0 else kappa * normE / normA
#eval generalizedWeylBound (symMat2 1 2 3) (symMat2 4 1 5)
#eval spectralVariationBound (symMat2 1 2 3) (symMat2 4 1 5)
