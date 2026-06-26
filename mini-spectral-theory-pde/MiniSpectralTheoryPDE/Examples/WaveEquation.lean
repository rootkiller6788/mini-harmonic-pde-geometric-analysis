/- Wave Equation Examples (L6):
Discrete wave equation, normal modes, standing waves, energy conservation,
d Alembert solution, dispersion relation.
Knowledge: L6 Canonical Examples (MIT 18.303, Princeton MAT 520) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE

def waveFrequency (c : Rat) (lam : Rat) : Rat := c * lam

def waveStep (n : Nat) (L : Matrix n n) (c dt : Rat) (u_prev u_curr : Vector n) : Vector n :=
  let Lu := Matrix.mulVec n n L u_curr
  let acc := Vector.smul n ((c*dt)^2) Lu
  Vector.sub n (Vector.smul n 2 u_curr) (Vector.add n u_prev acc)

def waveSolution (n : Nat) (L : Matrix n n) (c : Rat) (u0 u1 : Vector n) (t : Rat) (dt : Rat) : Vector n :=
  let steps := t / dt
  if steps <= 0 then u0
  else if steps <= 1 then u1
  else
    let rec step (u_prev u_curr : Vector n) (k : Rat) : Vector n :=
      if k >= steps then u_curr
      else step u_curr (waveStep n L c dt u_prev u_curr) (k+1)
    step u0 u1 1

def normalModes2 (L : Matrix 2 2) (c : Rat) : List (Rat × Rat) :=
  let (l1,l2) := eigenvalues2 L
  let w1 := waveFrequency c l1
  let w2 := waveFrequency c l2
  [(w1, l1), (w2, l2)]

def standingWave (c : Rat) (t : Rat) (mode : Nat) : Vector 2 :=
  let L := pathGraph2Laplacian
  let (l1,l2) := eigenvalues2 L
  let w1 := waveFrequency c l1
  let w2 := waveFrequency c l2
  match mode with
  | 0 => fun _ => w1 * t
  | _ => fun i => match i with | Fin.mk 0 _ => w2 * t | Fin.mk 1 _ => -(w2 * t)

def waveEnergy (n : Nat) (L : Matrix n n) (c : Rat) (u u_t : Vector n) : Rat :=
  (1/2 : Rat) * Vector.normSq n u_t + (1/2 : Rat) * c*c * Vector.dot n u (Matrix.mulVec n n L u)

def dispersionRelation (L : Matrix 2 2) (c : Rat) : Rat × Rat :=
  let (l1,l2) := eigenvalues2 L
  (waveFrequency c l1, waveFrequency c l2)

def groupVelocity (c : Rat) (lam : Rat) : Rat := c / (2 * lam)

def phaseVelocity (c : Rat) (lam : Rat) : Rat := waveFrequency c lam / lam

def dAlembertSolution (c : Rat) (f g : Rat -> Rat) (x t : Rat) : Rat :=
  (f (x + c*t) + f (x - c*t)) / 2

def courantCondition (c dt dx : Rat) : Bool := c*dt <= dx

#eval "=== Wave Equation Examples ==="
#eval let (l1,_) := eigenvalues2 pathGraph2Laplacian; waveFrequency 1 l1
#eval normalModes2 pathGraph2Laplacian 1
#eval dispersionRelation pathGraph2Laplacian 1
#eval let u0 := vec2 1 0; let u1 := vec2 0 1; waveStep 2 pathGraph2Laplacian 1 1 u0 u1

end MiniSpectralTheoryPDE
/- Extended Wave Equation Examples
Wave equation: u_tt = c^2 u_xx. Separation: u(x,t) = X(x)T(t).
X'' + lambda X = 0, T'' + c^2 lambda T = 0.
Solutions: u(x,t) = sum (A_k cos(c sqrt(lambda_k) t) + B_k sin(c sqrt(lambda_k) t)) phi_k(x).
Discrete: normal modes are eigenvectors of Laplacian. -/
def dampingWaveStep (n : Nat) (L : Matrix n n) (c dt gamma : Rat) (u_prev u_curr : Vector n) : Vector n :=
  let Lu := Matrix.mulVec n n L u_curr
  let acc := Vector.smul n ((c*dt)^2) Lu
  let damp := Vector.smul n gamma (Vector.sub 2 u_curr u_prev)
  Vector.sub n (Vector.sub n (Vector.smul n 2 u_curr) (Vector.add n u_prev acc)) damp
def forcedWaveStep (n : Nat) (L : Matrix n n) (c dt : Rat) (u_prev u_curr f : Vector n) : Vector n :=
  let Lu := Matrix.mulVec n n L u_curr
  let acc := Vector.smul n ((c*dt)^2) Lu
  let force := Vector.smul n (dt*dt) f
  Vector.add n (Vector.sub n (Vector.smul n 2 u_curr) (Vector.add n u_prev acc)) force
def waveNormalMode (c : Rat) (lam : Rat) (A B : Rat) (x t : Rat) : Rat :=
  let omega := c * lam
  A * omega * t + B * omega * t
def resonances (c : Rat) (lam : Rat) : List Rat := [c*lam, 2*c*lam, 3*c*lam]
def impedanceBoundary (n : Nat) (L : Matrix n n) (alpha : Rat) : Matrix n n :=
  Matrix.add n n L (Matrix.smul n n alpha (Matrix.identity n))
#eval dampingWaveStep 2 pathGraph2Laplacian 1 1 1 (vec2 1 0) (vec2 0 1)
#eval resonances 1 2
