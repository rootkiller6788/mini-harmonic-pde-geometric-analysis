/- Spectral Geometry (L8):
Isospectrality, Cheeger inequality, spectral zeta, heat trace, determinant.
Hearing the shape of a drum, inverse spectral geometry.
Knowledge: L8 Advanced Topics (Princeton MAT 595, ETH 401-3462) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE

def cheegerConstant2 (G : SimpleGraph 2) : Rat := G.adjacency (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))

def spectralZeta2 (G : SimpleGraph 2) (s : Rat) : Rat :=
  let (l1,l2) := eigenvalues2 (G.laplacian 2)
  if l2 = 0 then 0 else l2 ^ ((-1)*s)

def heatTraceApprox2 (G : SimpleGraph 2) (t : Rat) : Rat :=
  let (l1,l2) := eigenvalues2 (G.laplacian 2)
  (1 + t*l1) + (1 + t*l2)

def heatTraceTaylor2 (G : SimpleGraph 2) (t : Rat) (order : Nat) : Rat :=
  let (l1,l2) := eigenvalues2 (G.laplacian 2)
  let series1 := List.sum (List.range (order+1)).map (fun k => (t*l1)^k / (List.product (List.range k) (fun x => x+1)).sum)
  let series2 := List.sum (List.range (order+1)).map (fun k => (t*l2)^k / (List.product (List.range k) (fun x => x+1)).sum)
  series1 + series2

def spectralDeterminant2 (G : SimpleGraph 2) : Rat :=
  let (l1,l2) := eigenvalues2 (G.laplacian 2)
  if l1 = 0 then l2 else if l2 = 0 then l1 else l1*l2

def isospectralCheck (L1 L2 : Matrix 2 2) : Bool :=
  let (a1,a2) := eigenvalues2 L1
  let (b1,b2) := eigenvalues2 L2
  (a1 == b1 && a2 == b2) || (a1 == b2 && a2 == b1)

def spectralRigidity2 (L : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 L
  l1 + l2

def kacQuestion (L : Matrix 2 2) : Rat := spectralRigidity2 L

def effectiveResistance2 (G : SimpleGraph 2) (i j : Fin 2) : Rat :=
  let L := G.laplacian 2
  if i = j then 0 else 1 / G.adjacency i j

def kirchhoffIndex2 (G : SimpleGraph 2) : Rat :=
  let L := G.laplacian 2
  let (l1,l2) := eigenvalues2 L
  if l2 = 0 then 0 else 2/l2

#eval "=== Spectral Geometry ==="
#eval let G : SimpleGraph 2 := { adjacency := fun i j => if i=j then 0 else 1; symmetric := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; case succ n => cases n; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; no_self_loops := by intro i; cases i; case mk v h => cases v <;> rfl; zero_one := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> simp; case succ n => cases n; case zero => cases j; case mk v2 h2 => cases v2 <;> simp }; cheegerConstant2 G
#eval spectralDeterminant2 (let G : SimpleGraph 2 := { adjacency := fun i j => if i=j then 0 else 1; symmetric := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; case succ n => cases n; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; no_self_loops := by intro i; cases i; case mk v h => cases v <;> rfl; zero_one := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> simp; case succ n => cases n; case zero => cases j; case mk v2 h2 => cases v2 <;> simp }; G)
end MiniSpectralTheoryPDE