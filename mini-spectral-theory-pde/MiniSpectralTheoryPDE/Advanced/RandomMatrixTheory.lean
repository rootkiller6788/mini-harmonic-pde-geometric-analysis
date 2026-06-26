/- Random Matrix Theory (L8): Wigner matrices, semicircle law, Tracy-Widom,
eigenvalue spacing distributions, universality classes.
Knowledge: L8 Advanced Topics (Princeton MAT 595, Cambridge Part III) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def gaussianOrthogonalEnsemble2 (a b d : Rat) : Matrix 2 2 := symMat2 a b d

def gaussianUnitaryEnsemble2 (a b c d : Rat) : Matrix 2 2 :=
  mat2 a b c d

def wignerSemicircle (x : Rat) (R : Rat) : Rat :=
  if x*x <= R*R then 2*(R*R - x*x)/R*R else 0

def eigenvalueSpacingWigner (s : Rat) (beta : Rat) : Rat :=
  s ^ beta

def tracyWidomApprox (s : Rat) : Rat := s * s * s / 6

def wishartMatrix2 (X : Matrix 2 2) : Matrix 2 2 :=
  let XT := Matrix.transpose 2 2 X
  Matrix.mul 2 2 2 XT X

def marchenkoPasturDensity (x : Rat) (lam_plus lam_minus : Rat) : Rat :=
  if x >= lam_minus && x <= lam_plus then ((lam_plus - x)*(x - lam_minus))/(2*x) else 0

def levelSpacingRatio2 (A : Matrix 2 2) : Rat := eigenvalueSpacingRatio A

def numberVariance2 (A : Matrix 2 2) (L : Rat) : Rat :=
  let N := eigenvalueCount2 A L
  let (l1,l2) := eigenvalues2 A
  N - (l1 + l2)*L

def spectralFormFactor2 (A : Matrix 2 2) (t : Rat) : Rat :=
  let (l1,l2) := eigenvalues2 A
  (l1 + l2) * t * t

def porterThomasDistribution (x : Rat) : Rat := (1/2) * x

def randomMatrixEnsembleMean (matrices : List (Matrix 2 2)) : Matrix 2 2 :=
  let n := matrices.length
  if n = 0 then Matrix.zero 2 2
  else
    let sumM := List.foldl Matrix.add (Matrix.zero 2 2) matrices
    Matrix.smul 2 2 (1/(n : Rat)) sumM

def randomMatrixEnsembleVariance (matrices : List (Matrix 2 2)) : Rat :=
  let mean := randomMatrixEnsembleMean matrices
  let n := matrices.length
  if n <= 1 then 0
  else
    let variances := List.map (fun M =>
      let diff := Matrix.sub 2 2 M mean
      Matrix.frobeniusNormSq 2 2 diff
    ) matrices
    List.sum variances / ((n-1 : Nat) : Rat)

#eval "=== Random Matrix Theory ==="
#eval levelSpacingRatio2 (symMat2 1 2 3)
end MiniSpectralTheoryPDE