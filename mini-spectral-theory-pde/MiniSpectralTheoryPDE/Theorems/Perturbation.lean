/- Perturbation Theory (L4): Eigenvalue sensitivity, Weyl bounds, avoided crossing -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def eigenvaluePerturbation (a b c da db dc : Rat) : Rat × Rat :=
  eigenvaluesSym2 (a+da) (b+db) (c+dc)

def eigenvaluePath (a b c da db dc t : Rat) : Rat × Rat :=
  eigenvaluesSym2 (a+t*da) (b+t*db) (c+t*dc)

def relativeChange (a b c da db dc : Rat) : Rat :=
  let (l1,l2) := eigenvaluesSym2 a b c
  let (m1,m2) := eigenvaluesSym2 (a+da) (b+db) (c+dc)
  if l1=0 then 0 else (m1-l1)/l1

def eigenvalueSensitivity (a b c : Rat) : Rat × Rat :=
  let (l1,l2) := eigenvaluesSym2 a b c
  let gap := eigenvalueGap2 (symMat2 a b c)
  if gap = 0 then (0, 0) else (1/gap, 1/gap)

def avoidedCrossingGap (b : Rat) : Rat :=
  let A := symMat2 0 b 0
  eigenvalueGap2 A

def perturbedRayleigh (a b c da db dc : Rat) (v : Vector 2) : Rat :=
  rayleighQuotient 2 (symMat2 (a+da) (b+db) (c+dc)) v

def eigenvalueDerivativeApprox (a b c da db dc : Rat) (eps : Rat) : Rat :=
  let (l1,_) := eigenvaluesSym2 a b c
  let (m1,_) := eigenvaluesSym2 (a+eps*da) (b+eps*db) (c+eps*dc)
  if eps = 0 then 0 else (m1 - l1) / eps

def conditionNumberPerturbation (a b c : Rat) : Rat :=
  let kappa := conditionNumber2 (symMat2 a b c)
  let gap := eigenvalueGap2 (symMat2 a b c)
  if gap = 0 then 0 else kappa / gap

#eval "=== Perturbation Examples ==="
#eval eigenvaluePerturbation 1 2 3 1 0 0
#eval eigenvaluePath 1 2 3 1 0 0 2
#eval relativeChange 1 2 3 1 0 0
#eval eigenvalueSensitivity 5 2 3
#eval avoidedCrossingGap 2
#eval eigenvalueDerivativeApprox 1 2 3 1 0 0 1
#eval conditionNumberPerturbation 5 2 3

end MiniSpectralTheoryPDE