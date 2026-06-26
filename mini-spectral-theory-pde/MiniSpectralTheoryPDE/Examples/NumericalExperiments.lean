/- Numerical Experiments with Spectral Methods (L6):
Convergence studies, eigenvalue computation benchmarks, error analysis.
Knowledge: L6 Canonical Examples (#eval verification) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
import MiniSpectralTheoryPDE.ProofMethods.RayleighQuotient
namespace MiniSpectralTheoryPDE
def powerMethodConvergenceHistory (A : Matrix 2 2) (v0 : Vector 2) (maxIter : Nat) : List Rat :=
  List.map (fun k => powerMethodRayleigh A v0 k) (List.range (maxIter+1))
def rayleighIterationConvergenceHistory (A : Matrix 2 2) (v0 : Vector 2) (maxIter : Nat) : List Rat :=
  List.map (fun k => rayleighIterationValue A v0 k) (List.range (maxIter+1))
def eigenvalueError (computed exact : Rat) : Rat :=
  if exact=0 then computed else (computed-exact)/exact
def compareMethods (A : Matrix 2 2) (v0 : Vector 2) (exactEigenvalue : Rat) (iter : Nat) : Rat * Rat :=
  let pm := powerMethodRayleigh A v0 iter
  let ri := rayleighIterationValue A v0 iter
  (eigenvalueError pm exactEigenvalue, eigenvalueError ri exactEigenvalue)
def conditionNumberExperiment (a b c : Rat) : Rat :=
  let kappa := conditionNumber2 (symMat2 a b c)
  let rate := convergenceRateEstimate (symMat2 a b c)
  kappa * rate
def eigenvalueSensitivityExperiment (a b c : Rat) (perturbation : Rat) : Rat :=
  let (l1,_) := eigenvaluesSym2 a b c
  let (m1,_) := eigenvaluesSym2 (a+perturbation) b c
  if l1=0 then 0 else (m1-l1)/(perturbation*l1)
def massMatrixExperiment (n : Nat) (h : Rat) : Rat :=
  let M := massMatrix1D n h
  let (l1,_) := eigenvalues2 M; l1
def stiffnessMatrixExperiment (n : Nat) (h : Rat) : Rat :=
  let K := stiffnessMatrix1D n h
  let (l1,_) := eigenvalues2 K; l1
def generalizedEigenvalueExperiment (n : Nat) (h : Rat) : Rat * Rat :=
  let M := massMatrix1D n h
  let K := stiffnessMatrix1D n h
  let (km1,_) := eigenvalues2 K
  let (mm1,_) := eigenvalues2 M
  (km1, mm1)
def spectralConvergenceRate (A : Matrix 2 2) (v0 : Vector 2) (exact : Rat) : Rat :=
  let h1 := powerMethodRayleigh A v0 5
  let h2 := powerMethodRayleigh A v0 10
  if exact=0 then 0 else ((h2-exact)/(h1-exact))
def finiteDifferenceConvergence (hVals : List Rat) : List Rat :=
  List.map (fun h => let L := sturmLiouvilleMatrix 2 h; let (l,_) := eigenvalues2 L; l*h*h) hVals
#eval compareMethods (symMat2 4 1 3) (vec2 1 0) 4 50
#eval conditionNumberExperiment 4 1 3
#eval eigenvalueSensitivityExperiment 5 2 3 2
#eval generalizedEigenvalueExperiment 2 1
#eval spectralConvergenceRate (symMat2 4 1 3) (vec2 1 0) 4
#eval finiteDifferenceConvergence [1, 1/2, 1/4, 1/8]
end MiniSpectralTheoryPDE
