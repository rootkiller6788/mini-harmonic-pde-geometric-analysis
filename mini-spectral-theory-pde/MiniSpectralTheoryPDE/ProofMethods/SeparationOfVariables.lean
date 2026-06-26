/- Separation of Variables (L5): Discrete Laplacian eigenfunctions, Fourier method.
For PDE u_t = Lu, separation u(x,t) = X(x)T(t) gives X''(x) = -lambda X(x).
Discrete analog: eigenvectors of Laplacian give spatial modes.
Proof technique 2 of 3: Eigenfunction expansion for PDE solutions. -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE
def discreteLaplacian1D (n : Nat) : Matrix n n := fun i j => if i=j then 2 else if j.val+1=i.val then -1 else if i.val+1=j.val then -1 else 0
def eigenExpansion2 (A : Matrix 2 2) (f : Vector 2) : Vector 2 := let (l1,l2) := eigenvalues2 A; let P1 := spectralProjection2 A l1; let P2 := spectralProjection2 A l2; Vector.add 2 (Matrix.mulVec 2 2 P1 f) (Matrix.mulVec 2 2 P2 f)
def fourierCoefficients2 (A : Matrix 2 2) (f : Vector 2) : Rat × Rat := let (l1,l2) := eigenvalues2 A; let P1 := spectralProjection2 A l1; let P2 := spectralProjection2 A l2; (Vector.dot 2 f (Matrix.mulVec 2 2 P1 f), Vector.dot 2 f (Matrix.mulVec 2 2 P2 f))
def fourierReconstruction2 (A : Matrix 2 2) (c1 c2 : Rat) : Vector 2 := let (l1,l2) := eigenvalues2 A; let P1 := spectralProjection2 A l1; let P2 := spectralProjection2 A l2; Vector.add 2 (Vector.smul 2 c1 (Matrix.mulVec 2 2 P1 (vec2 1 1))) (Vector.smul 2 c2 (Matrix.mulVec 2 2 P2 (vec2 1 1)))
def productSolution2D (nx ny : Nat) (f g : Vector 2) (i : Fin nx) (j : Fin ny) : Rat := f i * g j
def sturmOscillationCount (v : Vector 2) : Nat := if v (Fin.mk 0 (by decide)) * v (Fin.mk 1 (by decide)) < 0 then 1 else 0
def heatKernelMode2 (A : Matrix 2 2) (t : Rat) (mode : Nat) : Rat := let (l1,l2) := eigenvalues2 A; match mode with | 0 => t*l1 | _ => t*l2
def waveModeExpansion (A : Matrix 2 2) (c : Rat) (t : Rat) (coeffs : Rat × Rat) : Vector 2 := let (a1,a2) := coeffs; let (l1,l2) := eigenvalues2 A; let w1 := c*l1; let w2 := c*l2; fun i => match i with | Fin.mk 0 _ => a1*w1*t | Fin.mk 1 _ => a2*w2*t
#eval eigenvalues2 (discreteLaplacian1D 2)
#eval eigenExpansion2 (symMat2 3 1 2) (vec2 5 7)
#eval fourierCoefficients2 (symMat2 3 1 2) (vec2 5 7)
#eval sturmOscillationCount (vec2 1 (-2))
end MiniSpectralTheoryPDE
/- Extended Separation of Variables
For time-dependent PDEs: u(x,t) = sum_{k} c_k e^{-lambda_k t} phi_k(x)
where (lambda_k, phi_k) are eigenpairs of the spatial operator.
Applications: heat equation, wave equation, Schrodinger equation.
Discrete analog: eigenvectors of Laplacian matrix. -/
def heatKernelExpansion (L : Matrix 2 2) (u0 : Vector 2) (t : Rat) (modes : Nat) : Vector 2 :=
  let (l1,l2) := eigenvalues2 L
  let coeffs := fourierCoefficients2 L u0
  let (c1,c2) := coeffs
  fun i => match i with
  | Fin.mk 0 _ => c1 * t * l1
  | Fin.mk 1 _ => c2 * t * l2
def greenFunction2 (L : Matrix 2 2) (i j : Fin 2) : Rat :=
  let (l1,l2) := eigenvalues2 L
  if l1 = 0 then 0 else 1/(l1 * l2)
def spectralRepresentation (A : Matrix 2 2) (f : Vector 2) : Vector 2 := eigenExpansion2 A f
def completenessRelation (A : Matrix 2 2) : Matrix 2 2 :=
  let (l1,l2) := eigenvalues2 A
  let P1 := spectralProjection2 A l1
  let P2 := spectralProjection2 A l2
  Matrix.add 2 2 P1 P2
def parsevalIdentity (A : Matrix 2 2) (f : Vector 2) : Rat :=
  let f_hat := eigenExpansion2 A f
  Vector.normSq 2 f_hat
#eval let L := pathGraph2Laplacian; heatKernelExpansion L (vec2 1 0) 1 2
#eval completenessRelation (symMat2 1 2 3)
