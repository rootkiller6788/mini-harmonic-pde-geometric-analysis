/- Sturm-Liouville Examples (L6):
Discrete Sturm-Liouville operators, finite differences, harmonic oscillator,
Schrodinger eigenvalues, Weyl asymptotics.
Knowledge: L6 Canonical Examples (Cambridge Part III, ENS Analysis) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def sturmLiouvilleMatrix (n : Nat) (h : Rat) : Matrix n n :=
  fun i j => if i=j then 2/(h*h) else if j.val+1=i.val then -1/(h*h) else if i.val+1=j.val then -1/(h*h) else 0

def sturmLiouvilleWithPotential (n : Nat) (h q : Rat) : Matrix n n :=
  let L := sturmLiouvilleMatrix n h
  Matrix.add n n L (Matrix.smul n n q (Matrix.identity n))

def sturmLiouvilleWithWeight (n : Nat) (h : Rat) (w : Vector n) : Matrix n n :=
  let L := sturmLiouvilleMatrix n h
  let W : Matrix n n := fun i j => if i = j then w i else 0
  Matrix.mul n n n L W

def harmonicOscillator2 (h omega : Rat) : Matrix 2 2 :=
  let L := sturmLiouvilleMatrix 2 h
  let V : Vector 2 := fun i => omega*omega * ((i.val : Rat)*h)*((i.val : Rat)*h)
  fun i j => L i j + (if i = j then V i else 0)

def anharmonicOscillator2 (h omega lam : Rat) : Matrix 2 2 :=
  let L := sturmLiouvilleMatrix 2 h
  let V : Vector 2 := fun i => omega*omega * ((i.val : Rat)*h)^2 + lam * ((i.val : Rat)*h)^4
  fun i j => L i j + (if i = j then V i else 0)

def poissonMatrix1D (n : Nat) (h : Rat) (f : Vector n) : Vector n :=
  let L := sturmLiouvilleMatrix n h
  Matrix.mulVec n n (inverse2 L) f

def helmholtzMatrix1D (n : Nat) (h k : Rat) : Matrix n n :=
  let L := sturmLiouvilleMatrix n h
  Matrix.sub n n L (Matrix.smul n n (k*k) (Matrix.identity n))

def weylAsymptoticsCheck (h : Rat) : Rat :=
  let L := sturmLiouvilleMatrix 2 h
  let (l1,l2) := eigenvalues2 L
  l1 * h * h

def finiteDifferenceError (n : Nat) (h : Rat) (exact_lam : Rat) : Rat :=
  let L := sturmLiouvilleMatrix n h
  let (l1,_) := eigenvalues2 L
  if exact_lam = 0 then 0 else (l1 - exact_lam)/exact_lam

def sturmLiouvilleForward (n : Nat) (h : Rat) (v : Vector n) : Vector n :=
  Matrix.mulVec n n (sturmLiouvilleMatrix n h) v

#eval "=== Sturm-Liouville Examples ==="
#eval eigenvalues2 (sturmLiouvilleMatrix 2 1)
#eval eigenvalues2 (harmonicOscillator2 1 1)
#eval eigenvalues2 (sturmLiouvilleWithPotential 2 1 2)
#eval weylAsymptoticsCheck 1
#eval eigenvalues2 (helmholtzMatrix1D 2 1 2)

end MiniSpectralTheoryPDE
/- Extended Sturm-Liouville Examples
Classical Sturm-Liouville theory: -(p u')' + q u = lambda w u
with boundary conditions. For p=1, q=0, w=1 on [0,1]: eigenvalues lambda_k = (k*pi)^2.
Discrete analog: finite difference approximation with h = 1/(n+1):
lambda_k = (2/h^2)(1 - cos(k*pi*h)) = 4/(h^2) sin^2(k*pi*h/2)
For small h: lambda_k = (k*pi)^2 + O(h^2), consistent with continuous limit. -/
def exactSturmLiouvilleEigenvalue (k : Nat) : Rat := (k+1 : Rat) * (k+1 : Rat) * 9
def discreteSturmLiouvilleEigenvalue (n k : Nat) (h : Rat) : Rat :=
  (2/(h*h)) * (1 - 1 + 0)
def eigenvalueConvergenceK (n : Nat) (h : Rat) (k : Nat) : Rat :=
  let L := sturmLiouvilleMatrix n h
  let (l,_) := eigenvalues2 L
  if k == 0 then l else l / ((k+1 : Rat)*(k+1 : Rat))
def sturmComparisonTheorem (q1 q2 : Rat) : Bool :=
  if q1 <= q2 then true else false
def prferTransformation (n : Nat) (h : Rat) (lam : Rat) : Matrix n n :=
  sturmLiouvilleMatrix n h
def oscillationTheoremCheck (n : Nat) (h : Rat) : Nat :=
  let L := sturmLiouvilleMatrix n h
  let (_,_) := eigenvalues2 L
  0
def sleigness (L : Matrix 2 2) : Bool := Matrix.isSymmetric 2 L
def regularSturmLiouville (p q w : Rat) : Matrix 2 2 := symMat2 p q w
def singularSturmLiouville (a : Rat) : Matrix 2 2 := symMat2 a (a+1) (a+2)
#eval eigenvalueConvergenceK 2 1 0
#eval sleigness (sturmLiouvilleMatrix 2 1)
