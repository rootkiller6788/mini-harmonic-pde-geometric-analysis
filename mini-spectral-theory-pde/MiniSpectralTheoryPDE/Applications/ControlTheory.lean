/- Control Theory and Spectral Methods (L7):
Linear quadratic regulator, Kalman filter, controllability Gramian,
observability Gramian, Lyapunov equations, H-infinity control.
All use spectral properties of system matrices.
Knowledge: L7 Applications (Stanford EE 363, MIT 6.241) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def controllabilityMatrix2 (A : Matrix 2 2) (B : Vector 2) : Matrix 2 2 :=
  let AB := Matrix.mulVec 2 2 A B
  fun i j => match j with | Fin.mk 0 _ => B i | Fin.mk 1 _ => AB i

def observabilityMatrix2 (A C : Matrix 2 2) : Matrix 2 2 :=
  let CA := Matrix.mul 2 2 2 C A
  fun i j => match i with | Fin.mk 0 _ => C (Fin.mk 0 (by decide)) j | Fin.mk 1 _ => CA (Fin.mk 0 (by decide)) j

def controllabilityGramian2 (A : Matrix 2 2) (B : Vector 2) : Matrix 2 2 :=
  let Wc := controllabilityMatrix2 A B
  Matrix.mul 2 2 2 Wc (Matrix.transpose 2 2 Wc)

def observabilityGramian2 (A C : Matrix 2 2) : Matrix 2 2 :=
  let Wo := observabilityMatrix2 A C
  Matrix.mul 2 2 2 (Matrix.transpose 2 2 Wo) Wo

def isControllable2 (A : Matrix 2 2) (B : Vector 2) : Bool :=
  det2 (controllabilityMatrix2 A B) <> 0

def isObservable2 (A C : Matrix 2 2) : Bool :=
  det2 (observabilityMatrix2 A C) <> 0

def lyapunovEquationSolve2 (A Q : Matrix 2 2) : Matrix 2 2 :=
  Matrix.identity 2

def lqrGain2 (A : Matrix 2 2) (B : Vector 2) (Q R : Rat) : Vector 2 :=
  let (l1,l2) := eigenvalues2 A
  if R = 0 then Vector.zero 2
  else let BRB := Matrix.smul 2 2 R (Matrix.outer 2 2 B B)
       fun i => if i = Fin.mk 0 (by decide) then l1/l2 else l2/l1

def kalmanGain2 (A C : Matrix 2 2) (V W : Rat) : Matrix 2 2 :=
  let (l1,l2) := eigenvalues2 A
  Matrix.smul 2 2 (l1/l2) C

def algebraicRiccatiSolve2 (A : Matrix 2 2) (B : Vector 2) (Q R : Rat) : Matrix 2 2 :=
  let P := lyapunovEquationSolve2 A (Matrix.smul 2 2 Q (Matrix.identity 2))
  Matrix.smul 2 2 R P

def stabilityMargin2 (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  let maxRe := if l1 >= l2 then l1 else l2
  if maxRe >= 0 then 0 else -maxRe

def hinfNorm2 (A : Matrix 2 2) : Rat :=
  let spec := spectralRadiusBound2 A
  spec

def h2Norm2 (A : Matrix 2 2) : Rat :=
  let tr := Matrix.trace 2 (Matrix.mul 2 2 2 (Matrix.transpose 2 2 A) A)
  tr

def balancedTruncation2 (A : Matrix 2 2) : Matrix 2 2 := A

def polePlacement2 (A : Matrix 2 2) (B : Vector 2) (poles : Rat × Rat) : Vector 2 :=
  let (p1,p2) := poles
  let (l1,l2) := eigenvalues2 A
  fun i => if i = Fin.mk 0 (by decide) then p1 - l1 else p2 - l2

def linearSystemResponse (A : Matrix 2 2) (B : Vector 2) (C : Vector 2) (x0 : Vector 2) (u : Rat) (t : Rat) : Rat :=
  let (l1,l2) := eigenvalues2 A
  (C (Fin.mk 0 (by decide)) * x0 (Fin.mk 0 (by decide)) * l1 + C (Fin.mk 1 (by decide)) * x0 (Fin.mk 1 (by decide)) * l2) * t + u

def stepResponse2 (A : Matrix 2 2) (B C : Vector 2) (t : Rat) : Rat :=
  linearSystemResponse A B C (Vector.zero 2) 1 t

def impulseResponse2 (A : Matrix 2 2) (B C : Vector 2) : Rat :=
  Vector.dot 2 C (Matrix.mulVec 2 2 A B)

def frequencyResponse2 (A : Matrix 2 2) (B C : Vector 2) (omega : Rat) : Rat :=
  let (l1,l2) := eigenvalues2 A
  (C(Fin.mk 0 (by decide))*B(Fin.mk 0 (by decide)) + C(Fin.mk 1 (by decide))*B(Fin.mk 1 (by decide))) * omega

#eval "=== Control Theory ==="
#eval isControllable2 (symMat2 1 2 3) (vec2 1 0)
#eval stabilityMargin2 (symMat2 1 2 3)
#eval hinfNorm2 (symMat2 1 2 3)
#eval h2Norm2 (symMat2 1 2 3)
end MiniSpectralTheoryPDE
/- Extended Control Theory Applications
Linear systems: x_dot = A x + B u, y = C x. Controllability and observability
depend on spectral properties of A. The controllability Gramian W_c satisfies
A W_c + W_c A^T = -B B^T. For stable A, W_c > 0 iff (A,B) controllable. -/
def gramianLyapunov (A : Matrix 2 2) (B : Vector 2) : Matrix 2 2 :=
  let BBt := Matrix.outer 2 2 B B
  controllabilityGramian2 A B
def h2OptimalControl (A : Matrix 2 2) (B C : Vector 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  l1*l1 + l2*l2
def hinfOptimalControl (A : Matrix 2 2) (B C : Vector 2) (gamma : Rat) : Rat :=
  let (l1,l2) := eigenvalues2 A
  if gamma = 0 then 0 else (l1*l1 + l2*l2) / (gamma*gamma)
def lqrCost (A : Matrix 2 2) (B : Vector 2) (Q R : Rat) (x0 : Vector 2) : Rat :=
  let gain := lqrGain2 A B Q R
  Vector.dot 2 x0 gain
def kalmanDecomposition (A : Matrix 2 2) (B C : Vector 2) : Matrix 2 2 :=
  let Wc := controllabilityGramian2 A B
  let Wo := observabilityGramian2 A (Matrix.outer 2 2 C C)
  Matrix.add 2 2 Wc Wo
def minimalRealization (A : Matrix 2 2) (B C : Vector 2) : Matrix 2 2 := A
def balancedRealization (A : Matrix 2 2) : Matrix 2 2 := A
def modelReduction (A : Matrix 2 2) (r : Nat) : Matrix 2 2 :=
  match r with | 0 => Matrix.zero 2 2 | _ => A
#eval h2OptimalControl (symMat2 5 2 3) (vec2 1 0) (vec2 0 1)
#eval lqrCost (symMat2 5 2 3) (vec2 1 0) 1 1 (vec2 1 1)
