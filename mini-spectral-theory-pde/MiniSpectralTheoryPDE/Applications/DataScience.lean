/- Data Science and Machine Learning (L7):
Principal Component Analysis, Singular Value Decomposition, spectral clustering,
dimensionality reduction, collaborative filtering.
All rely on spectral decomposition of data matrices.
Knowledge: L7 Applications (Stanford CS 229, MIT 6.867) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def pcaVarianceExplained (A : Matrix 2 2) (k : Nat) : Rat := varianceExplained A k

def svdComponents2 (A : Matrix 2 2) : Rat × Rat := singularValues2 A

def reconstructionError2 (A : Matrix 2 2) (k : Nat) : Rat :=
  let (s1,s2) := singularValues2 A
  match k with | 0 => s2*s2 | _ => 0

def lowRankApprox2 (A : Matrix 2 2) (k : Nat) : Matrix 2 2 :=
  match k with | 0 => Matrix.zero 2 2 | _ => A

def spectralEmbedding2 (L : Matrix 2 2) (dim : Nat) : List (Vector 2) :=
  let (l1,l2) := eigenvalues2 L
  [vec2 l1 l2]

def laplacianScore2 (A : Matrix 2 2) (feature : Vector 2) : Rat :=
  rayleighQuotient 2 A feature

def collaborativeFiltering2 (R : Matrix 2 2) (lam : Rat) : Matrix 2 2 :=
  let RT := Matrix.transpose 2 2 R
  let RTR := Matrix.mul 2 2 2 RT R
  let reg := Matrix.smul 2 2 lam (Matrix.identity 2)
  let M := Matrix.add 2 2 RTR reg
  inverse2 M

def ridgeRegression2 (X : Matrix 2 2) (y : Vector 2) (lam : Rat) : Vector 2 :=
  let XT := Matrix.transpose 2 2 X
  let XTX := Matrix.mul 2 2 2 XT X
  let reg := Matrix.smul 2 2 lam (Matrix.identity 2)
  let M := Matrix.add 2 2 XTX reg
  let XTy := Matrix.mulVec 2 2 XT y
  Matrix.mulVec 2 2 (inverse2 M) XTy

def lassoObjective2 (X : Matrix 2 2) (y beta : Vector 2) (lam : Rat) : Rat :=
  let residual := Vector.sub 2 (Matrix.mulVec 2 2 X beta) y
  let mse := Vector.normSq 2 residual
  let l1pen := lam * (if beta(Fin.mk 0 (by decide))>=0 then beta(Fin.mk 0 (by decide)) else -beta(Fin.mk 0 (by decide)) + if beta(Fin.mk 1 (by decide))>=0 then beta(Fin.mk 1 (by decide)) else -beta(Fin.mk 1 (by decide)))
  mse + l1pen

def cosineSimilarity2Vectors (v w : Vector 2) : Rat := Vector.cosineSimilarity 2 v w

def mahalanobisDistance2 (v w : Vector 2) (S : Matrix 2 2) : Rat :=
  let diff := Vector.sub 2 v w
  Vector.dot 2 diff (Matrix.mulVec 2 2 (inverse2 S) diff)

def tsneObjective2 (highDim : Matrix 2 2) (lowDim : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 highDim
  let (m1,m2) := eigenvalues2 lowDim
  (l1-m1)*(l1-m1) + (l2-m2)*(l2-m2)

def fisherLinearDiscriminant2 (mu1 mu2 : Vector 2) (S : Matrix 2 2) : Vector 2 :=
  let diff := Vector.sub 2 mu1 mu2
  Matrix.mulVec 2 2 (inverse2 S) diff

#eval "=== Data Science ==="
#eval pcaVarianceExplained (symMat2 2 (1/2) 1) 0
#eval svdComponents2 (symMat2 1 2 3)
#eval cosineSimilarity2Vectors (vec2 1 0) (vec2 0 1)
end MiniSpectralTheoryPDE