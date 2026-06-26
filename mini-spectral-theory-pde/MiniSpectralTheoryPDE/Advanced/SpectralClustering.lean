/- Spectral Clustering and Graph Partitioning (L8):
Normalized cuts, Fiedler vector, Laplacian eigenmaps, diffusion maps.
Knowledge: L8 Advanced Topics (Stanford CS 224W, MIT 6.867) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE

def normalizedCutValue2 (G : SimpleGraph 2) : Rat :=
  let L := G.laplacian 2
  let (l1,l2) := eigenvalues2 L
  if l1+l2 = 0 then 0 else l2 / (l1+l2)

def spectralClusterPartition2 (G : SimpleGraph 2) : List (List Nat) :=
  let (l1,l2) := eigenvalues2 (G.laplacian 2)
  if l1 <= l2 then [[0],[1]] else [[1],[0]]

def laplacianEigenmapEmbedding (L : Matrix 2 2) : List (Vector 2) :=
  let (l1,l2) := eigenvalues2 L
  let ev1 := vec2 1 0
  let ev2 := vec2 0 1
  [ev1, ev2]

def diffusionMap2 (L : Matrix 2 2) (t : Rat) : Matrix 2 2 := heatSemigroup2 L t

def ratioCut2 (G : SimpleGraph 2) : Rat :=
  let adj := G.adjacency (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  adj / 2

def modularityMatrix2 (G : SimpleGraph 2) : Matrix 2 2 :=
  let A := G.adjacency
  let m := G.adjacency (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let d0 := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) + A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let d1 := A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) + A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  if m = 0 then Matrix.zero 2 2
  else fun i j => A i j - d0 * d1 / (2*m)

def conductance2 (G : SimpleGraph 2) (S : List Nat) : Rat :=
  let adj := G.adjacency (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  adj / 1

def expansion2 (G : SimpleGraph 2) : Rat :=
  let adj := G.adjacency (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  adj

def isoperimetricNumber2 (G : SimpleGraph 2) : Rat := expansion2 G

def randomWalkLaplacian2 (G : SimpleGraph 2) : Matrix 2 2 :=
  let L := G.laplacian 2
  let Dinv : Matrix 2 2 := fun i j =>
    let d := G.degreeMatrix 2 i i
    if i=j && d<>0 then 1/d else 0
  Matrix.mul 2 2 2 Dinv L

def hittingTime2 (G : SimpleGraph 2) (from_target : Fin 2) : Rat :=
  let L := G.laplacian 2
  let (l1,l2) := eigenvalues2 L
  if l2 = 0 then 0 else 1/l2

def commuteTime2 (G : SimpleGraph 2) : Rat :=
  let L := G.laplacian 2
  let (l1,l2) := eigenvalues2 L
  if l1+l2 = 0 then 0 else 2/(l1+l2)

def pagerankMatrix2 (G : SimpleGraph 2) (alpha : Rat) : Matrix 2 2 :=
  let A := G.adjacency
  let d0 := A (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide)) + A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  let d1 := A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide)) + A (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  fun i j =>
    if i = j then alpha/2
    else
      let deg := match i with | Fin.mk 0 _ => d0 | Fin.mk 1 _ => d1
      if deg = 0 then alpha/2
      else (1-alpha) * A i j / deg + alpha/2

#eval "=== Spectral Clustering ==="
#eval let G : SimpleGraph 2 := { adjacency := fun i j => if i=j then 0 else 1; symmetric := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; case succ n => cases n; case zero => cases j; case mk v2 h2 => cases v2 <;> rfl; no_self_loops := by intro i; cases i; case mk v h => cases v <;> rfl; zero_one := by intro i j; cases i; case mk v1 h1 => cases v1; case zero => cases j; case mk v2 h2 => cases v2 <;> simp; case succ n => cases n; case zero => cases j; case mk v2 h2 => cases v2 <;> simp }; normalizedCutValue2 G
end MiniSpectralTheoryPDE