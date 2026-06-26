/- Signal Processing Applications (L7):
Graph Fourier transform, spectral filtering, PCA, covariance analysis.
Knowledge: L7 Applications - Signal Processing (Stanford EE 264, MIT 6.008) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

/-! Low-pass filter: keep eigenvalues <= cutoff -/
def lowPassFilter (cutoff : Rat) : Rat -> Rat := fun x => if x <= cutoff then 1 else 0
/-! High-pass filter: keep eigenvalues >= cutoff -/
def highPassFilter (cutoff : Rat) : Rat -> Rat := fun x => if x >= cutoff then 1 else 0
/-! Band-pass filter: keep eigenvalues in [low, high] -/
def bandPassFilter (low high : Rat) : Rat -> Rat := fun x => if low <= x && x <= high then 1 else 0
/-! Band-stop (notch) filter: remove eigenvalues in [low, high] -/
def notchFilter (low high : Rat) : Rat -> Rat := fun x => if low <= x && x <= high then 0 else 1

/-! Spectral filter: apply g to eigenvalues, reconstruct signal -/
def spectralFilter (A : Matrix 2 2) (g : Rat -> Rat) (f : Vector 2) : Vector 2 :=
  let (l1,l2) := eigenvalues2 A
  fun i => g (if i = Fin.mk 0 (by decide) then l1 else l2) * f i

/-! Variance explained by k-th principal component -/
def varianceExplained (A : Matrix 2 2) (k : Nat) : Rat :=
  let (l1,l2) := eigenvalues2 A; let total := l1+l2
  if total=0 then 0 else (if k=0 then l1 else l2)/total

/-! Cumulative variance explained by first k components -/
def cumulativeVariance (A : Matrix 2 2) (k : Nat) : Rat :=
  let (l1,l2) := eigenvalues2 A; let total := l1+l2
  if total=0 then 0 else
    match k with
    | 0 => l1/total
    | _ => (l1+l2)/total

/-! Covariance matrix from 2D data points -/
def covarianceMatrix2 (data : List (Rat × Rat)) : Matrix 2 2 :=
  let n := data.length
  if n <= 1 then Matrix.zero 2 2
  else
    let xs := data.map Prod.fst; let ys := data.map Prod.snd
    let mx := List.sum xs / (n : Rat); let my := List.sum ys / (n : Rat)
    let varx := List.sum (xs.map (fun x => (x - mx)^2)) / ((n-1 : Nat) : Rat)
    let vary := List.sum (ys.map (fun y => (y - my)^2)) / ((n-1 : Nat) : Rat)
    let covxy := List.sum (List.zipWith (fun x y => (x - mx)*(y - my)) xs ys) / ((n-1 : Nat) : Rat)
    symMat2 varx covxy vary

/-! Correlation coefficient: r = cov(x,y) / sqrt(var(x)*var(y)) -/
def correlationCoefficient2 (data : List (Rat × Rat)) : Rat :=
  let C := covarianceMatrix2 data
  let r := C (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let vx := C (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let vy := C (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  if vx*vy = 0 then 0 else r*r / (vx*vy)  -- r^2 approximation

/-! Signal-to-noise ratio: SNR = lambda_max / lambda_min -/
def signalToNoiseRatio2 (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  let lam_max := if l1 >= l2 then l1 else l2
  let lam_min := if l1 <= l2 then l1 else l2
  if lam_min = 0 then 0 else lam_max / lam_min

/-! Whitening transform: Z = Lambda^{-1/2} U^T X -/
def whiteningTransform2 (A : Matrix 2 2) (x : Vector 2) : Vector 2 :=
  let (l1,l2) := eigenvalues2 A
  let P1 := spectralProjection2 A l1
  let P2 := spectralProjection2 A l2
  let v1 := Matrix.mulVec 2 2 P1 x
  let v2 := Matrix.mulVec 2 2 P2 x
  if l1 = 0 || l2 = 0 then x
  else Vector.add 2 (Vector.smul 2 (1/l1) v1) (Vector.smul 2 (1/l2) v2)

/-! Graph Fourier transform: signal -> spectral domain -/
def graphFourierTransform2 (A : Matrix 2 2) (f : Vector 2) : Vector 2 :=
  let (l1,l2) := eigenvalues2 A
  let P1 := spectralProjection2 A l1
  let P2 := spectralProjection2 A l2
  fun i => match i with
  | Fin.mk 0 _ => Vector.dot 2 f (Matrix.mulVec 2 2 P1 f)
  | Fin.mk 1 _ => Vector.dot 2 f (Matrix.mulVec 2 2 P2 f)

/-! Inverse graph Fourier transform: spectral -> signal domain -/
def inverseGraphFourier2 (A : Matrix 2 2) (f_hat : Vector 2) : Vector 2 :=
  let (l1,l2) := eigenvalues2 A
  let P1 := spectralProjection2 A l1
  let P2 := spectralProjection2 A l2
  let s1 := f_hat (Fin.mk 0 (by decide))
  let s2 := f_hat (Fin.mk 1 (by decide))
  Vector.add 2 (Vector.smul 2 s1 (Matrix.mulVec 2 2 P1 (vec2 1 1))) (Vector.smul 2 s2 (Matrix.mulVec 2 2 P2 (vec2 1 1)))

#eval "=== Signal Processing ==="
#eval varianceExplained (symMat2 2 (1/2) 1) 0
#eval varianceExplained (symMat2 2 (1/2) 1) 1
#eval cumulativeVariance (symMat2 2 (1/2) 1) 0
#eval let data := [(1,2),(2,3),(3,5),(4,6)]; correlationCoefficient2 data
#eval signalToNoiseRatio2 (symMat2 5 2 3)

end MiniSpectralTheoryPDE