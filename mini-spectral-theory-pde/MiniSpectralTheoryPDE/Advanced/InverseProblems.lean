/- Inverse Spectral Problems (L8): Sturm-Liouville inverse, Kac problem, tomography.
Knowledge: L8 Advanced Topics -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE
def inverseSturmLiouville (eigenvalues : Rat * Rat) : Rat * Rat * Rat :=
  let (l1,l2) := eigenvalues; let a := l1 + l2; let b := l1 * l2; (a, b, 0)
def borgLevinsonCheck (potential : Vector 2) (eigenvalues exact : Rat * Rat) : Rat :=
  let (l1,l2) := eigenvalues; let (e1,e2) := exact; (l1-e1)*(l1-e1) + (l2-e2)*(l2-e2)
def kacInverseProblem (L1 L2 : Matrix 2 2) : Bool := isospectralCheck L1 L2
def isospectralCheck (L1 L2 : Matrix 2 2) : Bool :=
  let (a1,a2) := eigenvalues2 L1; let (b1,b2) := eigenvalues2 L2
  (a1 == b1 && a2 == b2) || (a1 == b2 && a2 == b1)
def inverseScattering (reflectionCoefficients : Rat * Rat) : Rat * Rat :=
  let (r1,r2) := reflectionCoefficients; (r1, r2)
def impedanceTomography (conductivity : Matrix 2 2) : Matrix 2 2 :=
  Matrix.transpose 2 2 conductivity
def spectralDetermination (spectrum : Rat * Rat) : Rat * Rat * Rat :=
  let (l1,l2) := spectrum; let a := l1 + l2; let b := l1 * l2; (a, b, 0)
def gelFandLevitan (scatteringData : Rat * Rat) : Vector 2 :=
  let (s1,s2) := scatteringData; fun i => match i with | Fin.mk 0 _ => s1 | Fin.mk 1 _ => s2
def marchenkoEquation (kernel : Matrix 2 2) (t : Rat) : Matrix 2 2 :=
  Matrix.add 2 2 kernel (Matrix.smul 2 2 t (Matrix.mul 2 2 2 kernel kernel))
def calderonProblem (boundaryData : Matrix 2 2) : Matrix 2 2 :=
  Matrix.transpose 2 2 boundaryData
def electricalImpedanceTomography (sigma : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 sigma; l1 + l2
def photoacousticTomography (absorption : Vector 2) : Rat :=
  Vector.sum 2 absorption
def diffuseOpticalTomography (mu_a mu_s : Vector 2) : Matrix 2 2 :=
  Matrix.outer 2 2 mu_a mu_s
def seismicInversion (velocity : Matrix 2 2) : Matrix 2 2 :=
  Matrix.mul 2 2 2 velocity velocity
def fullWaveformInversion (data model : Matrix 2 2) : Rat :=
  let diff := Matrix.sub 2 2 data model; Matrix.frobeniusNormSq 2 2 diff
def traveltimeTomography (slowness : Vector 2) : Matrix 2 2 :=
  Matrix.outer 2 2 slowness slowness
def adjointStateMethod (forward adjoint : Matrix 2 2) : Matrix 2 2 :=
  Matrix.mul 2 2 2 forward (Matrix.transpose 2 2 adjoint)
def tikhonovRegularization (A : Matrix 2 2) (alpha : Rat) : Matrix 2 2 :=
  let AT := Matrix.transpose 2 2 A; let ATA := Matrix.mul 2 2 2 AT A
  Matrix.add 2 2 ATA (Matrix.smul 2 2 alpha (Matrix.identity 2))
def landweberIteration (A : Matrix 2 2) (b x0 : Vector 2) (omega : Rat) (k : Nat) : Vector 2 :=
  match k with | 0 => x0 | n+1 => let x := landweberIteration A b x0 omega n
  let r := Vector.sub 2 (Matrix.mulVec 2 2 A x) b
  Vector.sub 2 x (Vector.smul 2 omega (Matrix.mulVec 2 2 (Matrix.transpose 2 2 A) r))
def lcurveMethod (A : Matrix 2 2) (b : Vector 2) (alphas : List Rat) : List (Rat * Rat) :=
  List.map (fun alpha =>
    let reg := tikhonovRegularization A alpha
    let sol := Matrix.mulVec 2 2 (inverse2 reg) (Matrix.mulVec 2 2 (Matrix.transpose 2 2 A) b)
    let resNorm := Vector.normSq 2 (Vector.sub 2 (Matrix.mulVec 2 2 A sol) b)
    let solNorm := Vector.normSq 2 sol
    (resNorm, solNorm)
  ) alphas
#eval isospectralCheck (symMat2 1 2 3) (symMat2 3 2 1)
#eval electricalImpedanceTomography (symMat2 1 2 3)
#eval tikhonovRegularization (symMat2 1 2 3) 1
end MiniSpectralTheoryPDE