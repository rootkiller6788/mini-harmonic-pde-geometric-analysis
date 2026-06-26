/- Minimax Method (L5) Courant-Fischer, eigenvalue interlacing, Poincare separation.
The Courant-Fischer theorem: lambda_k = max_{dim S=k} min_{v in S} R(A,v).
For 2x2: lambda1 = max_{v!=0} R(A,v), lambda2 = min_{v!=0} R(A,v).
Proof technique 3 of 3: Minimax optimization. -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE
def minimaxApprox (a b c : Rat) : Rat × Rat := let A := symMat2 a b c; (rayleighQuotient 2 A (vec2 1 0), rayleighQuotient 2 A (vec2 0 1))
def courantFischerMax (a b c : Rat) (candidates : List (Vector 2)) : Rat := List.foldl (fun b v => let R := rayleighQuotient 2 (symMat2 a b c) v; if R>b then R else b) (-1000) candidates
def courantFischerMin (a b c : Rat) (candidates : List (Vector 2)) : Rat := List.foldl (fun b v => let R := rayleighQuotient 2 (symMat2 a b c) v; if R<b then R else b) 1000 candidates
def cauchyInterlaceCheck (a b c : Rat) : Rat × Rat := let A := symMat2 a b c; (rayleighQuotient 2 A (vec2 1 0), rayleighQuotient 2 A (vec2 0 1))
def weylMonotonicityCheck (a b c da db dc : Rat) : Rat := let (l1,_) := eigenvaluesSym2 a b c; let (m1,_) := eigenvaluesSym2 (a+da) (b+db) (c+dc); m1-l1
def subspaceRayleigh (A : Matrix 2 2) (v w : Vector 2) : Rat := let Rv := rayleighQuotient 2 A v; let Rw := rayleighQuotient 2 A w; if Rv>=Rw then Rv else Rw
def oneDimSubspaceMin (A : Matrix 2 2) (direction : Vector 2) : Rat := rayleighQuotient 2 A direction
#eval minimaxApprox 5 2 3
#eval courantFischerMax 5 2 3 [vec2 1 0, vec2 0 1, vec2 1 1]
#eval courantFischerMin 5 2 3 [vec2 1 0, vec2 0 1, vec2 1 1]
#eval weylMonotonicityCheck 5 2 3 1 0 0
end MiniSpectralTheoryPDE
/- Extended minimax documentation
The Courant-Fischer minimax theorem is fundamental to spectral theory.
For symmetric nxn matrices: lambda_k = max_{dim S=k} min_{v in S, v!=0} R(A,v).
This variational characterization underlies eigenvalue perturbation theory,
Weyl inequalities, and numerical methods like Rayleigh-Ritz. -/
def minimaxSubspaceDimension (a b c : Rat) (k : Nat) : Rat :=
  match k with
  | 0 => 0
  | 1 => courantFischerMax a b c [vec2 1 0, vec2 0 1, vec2 1 1]
  | _ => courantFischerMin a b c [vec2 1 0, vec2 0 1, vec2 1 1]
def rayleighRitzSubspace (A : Matrix 2 2) (basis : List (Vector 2)) : Rat * Rat :=
  match basis with
  | [v1, v2] => (rayleighQuotient 2 A v1, rayleighQuotient 2 A v2)
  | [v] => let R := rayleighQuotient 2 A v; (R, R)
  | _ => (0, 0)
#eval minimaxSubspaceDimension 5 2 3 1
#eval minimaxSubspaceDimension 5 2 3 2
