/- Rayleigh Quotient Method (L5): Power method, inverse iteration, gradient descent.
The Rayleigh quotient R(v) = (v^T A v)/(v^T v) is central to spectral theory.
For symmetric A: min lambda <= R(v) <= max lambda for all v != 0.
Gradient: grad R(v) = 2(Av - R(v)v)/||v||^2. Zero iff v is eigenvector.
Proof technique 1 of 3: Variational optimization of Rayleigh quotient. -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE
def rayleighIteration (A : Matrix 2 2) (v0 : Vector 2) (k : Nat) : Vector 2 := match k with | 0 => v0 | n+1 => let prev := rayleighIteration A v0 n; let R := rayleighQuotient 2 A prev; let w := Matrix.mulVec 2 2 (resolvent2 A R) prev; Vector.smul 2 (1 / Vector.normSq 2 w) w
def powerMethod (A : Matrix 2 2) (v0 : Vector 2) (k : Nat) : Vector 2 := match k with | 0 => v0 | n+1 => let w := powerMethod A v0 n; let Aw := Matrix.mulVec 2 2 A w; Vector.smul 2 (1 / Vector.normSq 2 Aw) Aw
def powerMethodRayleigh (A : Matrix 2 2) (v0 : Vector 2) (k : Nat) : Rat := rayleighQuotient 2 A (powerMethod A v0 k)
def inverseIteration (A : Matrix 2 2) (sigma : Rat) (v0 : Vector 2) (k : Nat) : Vector 2 := match k with | 0 => v0 | n+1 => let prev := inverseIteration A sigma v0 n; let w := Matrix.mulVec 2 2 (resolvent2 A sigma) prev; Vector.smul 2 (1 / Vector.normSq 2 w) w
def inverseIterationRayleigh (A : Matrix 2 2) (sigma : Rat) (v0 : Vector 2) (k : Nat) : Rat := rayleighQuotient 2 A (inverseIteration A sigma v0 k)
def convergenceRateEstimate (A : Matrix 2 2) : Rat := let (l1,l2) := eigenvalues2 A; let r := if l1=0 then 0 else (if l2>=0 then l2 else -l2)/(if l1>=0 then l1 else -l1); r
def gradientDescentRayleigh (A : Matrix 2 2) (v0 : Vector 2) (stepSize : Rat) (k : Nat) : Vector 2 := match k with | 0 => v0 | n+1 => let prev := gradientDescentRayleigh A v0 stepSize n; let R := rayleighQuotient 2 A prev; let n2 := Vector.normSq 2 prev; let Av := Matrix.mulVec 2 2 A prev; let grad := Vector.smul 2 (2/n2) (Vector.sub 2 Av (Vector.smul 2 R prev)); Vector.sub 2 prev (Vector.smul 2 stepSize grad)
def shiftedInverseIteration (A : Matrix 2 2) (sigma : Rat) (v0 : Vector 2) (k : Nat) : Vector 2 := inverseIteration A sigma v0 k
def blockPowerMethod (A : Matrix 2 2) (V0 : Matrix 2 2) (k : Nat) : Matrix 2 2 := match k with | 0 => V0 | n+1 => let V := blockPowerMethod A V0 n; let AV := Matrix.mul 2 2 2 A V; AV
#eval powerMethodRayleigh (symMat2 4 1 3) (vec2 1 0) 10
#eval convergenceRateEstimate (symMat2 4 1 3)
#eval inverseIterationRayleigh (symMat2 4 1 3) 3 (vec2 1 0) 10
end MiniSpectralTheoryPDE
/- Extended Rayleigh Quotient Methods
The Rayleigh quotient R(v) = (v^T A v)/(v^T v) is the central quantity in
variational spectral theory. Its gradient grad R(v) = 2(Av - R(v)v)/||v||^2
vanishes exactly at eigenvectors. Key properties:
1. For symmetric A: min lambda <= R(v) <= max lambda
2. R(v) is stationary at eigenvectors
3. Convergence of power method: O((lambda2/lambda1)^k)
4. Rayleigh quotient iteration: cubic convergence
5. Generalized Rayleigh quotient for pencil (A,B) -/
def generalizedRayleighIteration (A B : Matrix 2 2) (v0 : Vector 2) (k : Nat) : Vector 2 :=
  match k with | 0 => v0 | n+1 => let prev := generalizedRayleighIteration A B v0 n
    let R := generalizedRayleighQuotient 2 A B prev
    let w := Matrix.mulVec 2 2 (resolvent2 (Matrix.sub 2 2 A (Matrix.smul 2 2 R B)) 0) prev
    Vector.smul 2 (1 / Vector.normSq 2 w) w
def generalizedRayleighQuotient2 (A B : Matrix 2 2) (v : Vector 2) : Rat :=
  let num := Vector.dot 2 v (Matrix.mulVec 2 2 A v)
  let den := Vector.dot 2 v (Matrix.mulVec 2 2 B v)
  if den = 0 then 0 else num / den
def traceMinimization (A : Matrix 2 2) (X : Matrix 2 2) : Rat :=
  Matrix.trace 2 (Matrix.mul 2 2 2 (Matrix.transpose 2 2 X) (Matrix.mul 2 2 2 A X))
def rayleighRitzTrace (A : Matrix 2 2) (V : Matrix 2 2) : Rat :=
  let AV := Matrix.mul 2 2 2 A V
  let VTAV := Matrix.mul 2 2 2 (Matrix.transpose 2 2 V) AV
  Matrix.trace 2 VTAV
#eval generalizedRayleighQuotient2 (symMat2 5 2 3) (Matrix.identity 2) (vec2 1 0)
#eval traceMinimization (symMat2 5 2 3) (Matrix.identity 2)
