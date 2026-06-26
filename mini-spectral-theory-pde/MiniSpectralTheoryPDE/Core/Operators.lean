/- Operator Structures (L3): Linear operators, self-adjoint, graph Laplacian, Sturm-Liouville, Schrodinger, heat semigroup -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

/-! Linear Operator wrapping a matrix -/
structure LinearOperator (n : Nat) where matrix : Matrix n n
def LinearOperator.apply (n : Nat) (T : LinearOperator n) (v : Vector n) : Vector n := Matrix.mulVec n n T.matrix v
def LinearOperator.identity (n : Nat) : LinearOperator n := { matrix := Matrix.identity n }
def LinearOperator.zero (n : Nat) : LinearOperator n := { matrix := Matrix.zero n n }
def LinearOperator.add (n : Nat) (S T : LinearOperator n) : LinearOperator n := { matrix := Matrix.add n n S.matrix T.matrix }
def LinearOperator.comp (n : Nat) (S T : LinearOperator n) : LinearOperator n := { matrix := Matrix.mul n n n S.matrix T.matrix }
def LinearOperator.adjoint (n : Nat) (T : LinearOperator n) : LinearOperator n := { matrix := Matrix.transpose n n T.matrix }

/-! Self-adjoint (symmetric) operator -/
structure SelfAdjointOperator (n : Nat) extends LinearOperator n where
  symmetric : Matrix.isSymmetric n matrix

/-! Simple undirected graph via adjacency matrix -/
structure SimpleGraph (n : Nat) where
  adjacency : Matrix n n
  symmetric : Matrix.isSymmetric n adjacency
  no_self_loops : forall i, adjacency i i = 0
  zero_one : forall i j, adjacency i j = 0 \/ adjacency i j = 1

def SimpleGraph.degreeMatrix (n : Nat) (G : SimpleGraph n) : Matrix n n :=
  fun i j => if i = j then List.sum (List.map (fun k => G.adjacency i k) (List.finRange n)) else 0

def SimpleGraph.laplacian (n : Nat) (G : SimpleGraph n) : Matrix n n :=
  Matrix.sub n n (G.degreeMatrix n) G.adjacency

/-! Path graph P2 Laplacian: L = [[1,-1],[-1,1]], eigenvalues {0, 2} -/
def pathGraph2Laplacian : Matrix 2 2 :=
  let G : SimpleGraph 2 := {
    adjacency := fun i j => match i,j with | Fin.mk 0 _, Fin.mk 0 _ => 0 | Fin.mk 0 _, Fin.mk 1 _ => 1 | Fin.mk 1 _, Fin.mk 0 _ => 1 | Fin.mk 1 _, Fin.mk 1 _ => 0
    symmetric := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; case succ n1 => cases n1; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl
    no_self_loops := by intro i; cases i; case mk v h => cases v <;> rfl
    zero_one := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> simp; case succ n1 => cases n1; case zero => cases j; case mk v2 h2 => cases v2 <;> simp
  }; G.laplacian 2

/-! Schrodinger operator: H = -Δ + V (kinetic + potential) -/
def schrodingerOperator (n : Nat) (laplacian : Matrix n n) (potential : Vector n) : Matrix n n :=
  Matrix.add n n laplacian (fun i j => if i = j then potential i else 0)

/-! Heat semigroup e^{tL} via spectral calculus (truncated expansion) -/
def heatSemigroup2 (L : Matrix 2 2) (t : Rat) : Matrix 2 2 := matrixExponential2 L t

/-! Wave operator cos(t√L) via spectral calculus -/
def waveOperator2 (L : Matrix 2 2) (t : Rat) : Matrix 2 2 :=
  functionalCalculus2 L (fun x => 1 - (t*x)^2/2 + (t*x)^4/24)

/-! Discrete Sturm-Liouville operator: -(p·u')' + q·u -/
structure SturmLiouvilleDiscrete (n : Nat) where
  p : Fin (n+1) -> Rat
  q : Fin n -> Rat

def SturmLiouvilleDiscrete.toMatrix (n : Nat) (SL : SturmLiouvilleDiscrete n) : Matrix n n :=
  fun i j =>
    if i = j then SL.p i + SL.p (Fin.mk (i.val+1) (by omega)) + SL.q i
    else if j.val+1 = i.val then -SL.p j
    else if i.val+1 = j.val then -SL.p i
    else 0

/-! Discrete biharmonic operator Δ² = L² where L is Laplacian -/
def biharmonicOperator (L : Matrix 2 2) : Matrix 2 2 := Matrix.mul 2 2 2 L L

/-! Operator norm bound via Frobenius norm squared -/
def operatorNormBound2 (A : Matrix 2 2) : Rat := Matrix.frobeniusNormSq 2 2 A

/-! Rayleigh-Ritz projection onto subspace -/
def rayleighRitzProjection2 (A : Matrix 2 2) (v1 v2 : Vector 2) : Matrix 2 2 :=
  let b11 := Vector.dot 2 v1 (Matrix.mulVec 2 2 A v1)
  let b12 := Vector.dot 2 v1 (Matrix.mulVec 2 2 A v2)
  let b22 := Vector.dot 2 v2 (Matrix.mulVec 2 2 A v2)
  symMat2 b11 b12 b22

/-! #eval examples -/
#eval "=== Operator Examples ==="
#eval Vector.dot 2 (vec2 1 0) (Matrix.mulVec 2 2 pathGraph2Laplacian (vec2 1 0))
#eval eigenvalues2 pathGraph2Laplacian
#eval eigenvalues2 (biharmonicOperator pathGraph2Laplacian)
#eval operatorNormBound2 (symMat2 1 2 3)

end MiniSpectralTheoryPDE