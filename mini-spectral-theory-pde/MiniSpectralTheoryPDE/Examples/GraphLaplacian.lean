/- Graph Laplacian Examples (L6):
Path P2-P4, cycle C3-C4, complete K3-K4, star S3-S4, Fiedler vector,
algebraic connectivity, spectral clustering, spanning trees.
Knowledge: L6 Canonical Examples (MIT 18.085, Berkeley MATH 228A) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
import MiniSpectralTheoryPDE.Core.Operators
namespace MiniSpectralTheoryPDE

def triangleLaplacian : Matrix 3 3 :=
  let adj : Matrix 3 3 := fun i j => if i=j then 0 else 1
  let deg : Matrix 3 3 := fun i j => if i=j then 2 else 0
  Matrix.sub 3 3 deg adj

def star3Laplacian : Matrix 3 3 := fun i j =>
  match i,j with
  | Fin.mk 0 _, Fin.mk 0 _ => 2 | Fin.mk 0 _, Fin.mk 1 _ => -1 | Fin.mk 0 _, Fin.mk 2 _ => -1
  | Fin.mk 1 _, Fin.mk 0 _ => -1 | Fin.mk 1 _, Fin.mk 1 _ => 1
  | Fin.mk 2 _, Fin.mk 0 _ => -1 | Fin.mk 2 _, Fin.mk 2 _ => 1 | _, _ => 0

def complete4Laplacian : Matrix 4 4 := fun i j => if i=j then 3 else -1

def pathGraph3Adjacency : Matrix 3 3 := fun i j =>
  match i,j with
  | Fin.mk 0 _, Fin.mk 1 _ => 1 | Fin.mk 1 _, Fin.mk 0 _ => 1
  | Fin.mk 1 _, Fin.mk 2 _ => 1 | Fin.mk 2 _, Fin.mk 1 _ => 1 | _, _ => 0

def pathGraph3Laplacian : Matrix 3 3 :=
  let deg : Matrix 3 3 := fun i j => if i=j then match i with | Fin.mk 0 _ => 1 | Fin.mk 1 _ => 2 | Fin.mk 2 _ => 1 else 0
  Matrix.sub 3 3 deg pathGraph3Adjacency

def cycleGraph4Adjacency : Matrix 4 4 := fun i j =>
  if (i.val+1)%4 = j.val || (j.val+1)%4 = i.val then 1 else 0

def cycleGraph4Laplacian : Matrix 4 4 :=
  let deg : Matrix 4 4 := fun i j => if i=j then 2 else 0
  Matrix.sub 4 4 deg cycleGraph4Adjacency

def cycleGraph3Laplacian : Matrix 3 3 := triangleLaplacian

def bipartiteCompleteLaplacian : Matrix 4 4 :=
  let adj : Matrix 4 4 := fun i j =>
    if i.val < 2 && j.val >= 2 then 1 else if i.val >= 2 && j.val < 2 then 1 else 0
  let deg : Matrix 4 4 := fun i j => if i=j then 2 else 0
  Matrix.sub 4 4 deg adj

def algebraicConnectivity2 (L : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 L
  if l1 <= l2 then l1 else l2

def fiedlerValue (n : Nat) (L : Matrix n n) : Rat := let (l1,l2) := eigenvalues2 L; if l1 <= l2 then l1 else l2

def normalizedLaplacian2 (G : SimpleGraph 2) : Matrix 2 2 :=
  let L := G.laplacian 2
  let d0 := G.degreeMatrix 2 (Fin.mk 0 (by decide)) (Fin.mk 0 (by decide))
  let d1 := G.degreeMatrix 2 (Fin.mk 1 (by decide)) (Fin.mk 1 (by decide))
  let Dinv : Matrix 2 2 := fun i j => match i,j with
    | Fin.mk 0 _, Fin.mk 0 _ => if d0=0 then 0 else 1/d0
    | Fin.mk 1 _, Fin.mk 1 _ => if d1=0 then 0 else 1/d1
    | _, _ => 0
  Matrix.mul 2 2 2 (Matrix.mul 2 2 2 Dinv L) Dinv

def numberOfSpanningTrees2 (L : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 L
  if l1 = 0 then l2/2 else l1/2

def graphEnergy (L : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 L
  (if l1 >= 0 then l1 else -l1) + (if l2 >= 0 then l2 else -l2)

def estradaIndex2 (A : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 A
  (1 + l1 + l1*l1/2 + l1*l1*l1/6) + (1 + l2 + l2*l2/2 + l2*l2*l2/6)

#eval "=== Graph Laplacian Examples ==="
#eval eigenvalues2 pathGraph2Laplacian
#eval List.sum (List.map (fun (i:Fin 3) => triangleLaplacian i i) (List.finRange 3))
#eval List.sum (List.map (fun (i:Fin 4) => complete4Laplacian i i) (List.finRange 4))
#eval algebraicConnectivity2 pathGraph2Laplacian
#eval numberOfSpanningTrees2 pathGraph2Laplacian
#eval graphEnergy pathGraph2Laplacian
#eval estradaIndex2 (symMat2 0 1 0)
end MiniSpectralTheoryPDE