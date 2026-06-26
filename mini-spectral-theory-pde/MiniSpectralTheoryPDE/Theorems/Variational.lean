/- Variational Principles (L4-L5): Rayleigh-Ritz, minimax, eigenvalue attainment -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

def rayleighRitzApprox (a b c : Rat) (v : Vector 2) : Rat := rayleighQuotient 2 (symMat2 a b c) v

def rayleighRitzMax2 (a b c : Rat) (candidates : List (Vector 2)) : Rat :=
  List.foldl (fun (best : Rat) (v : Vector 2) =>
    let R := rayleighRitzApprox a b c v
    if R > best then R else best
  ) 0 candidates

def rayleighRitzMin2 (a b c : Rat) (candidates : List (Vector 2)) : Rat :=
  match candidates with
  | [] => 0
  | v :: vs =>
    List.foldl (fun (best : Rat) (v : Vector 2) =>
      let R := rayleighRitzApprox a b c v
      if R < best then R else best
    ) (rayleighRitzApprox a b c v) vs

def minimaxLower (a b c : Rat) : Rat :=
  let A := symMat2 a b c
  let R1 := rayleighQuotient 2 A (vec2 1 0)
  let R2 := rayleighQuotient 2 A (vec2 0 1)
  if R1 <= R2 then R1 else R2

def minimaxUpper (a b c : Rat) : Rat :=
  let A := symMat2 a b c
  let R1 := rayleighQuotient 2 A (vec2 1 0)
  let R2 := rayleighQuotient 2 A (vec2 0 1)
  if R1 >= R2 then R1 else R2

def eigenvalueEnclosure (a b c : Rat) : Rat × Rat :=
  let A := symMat2 a b c
  let testVecs : List (Vector 2) := [vec2 1 0, vec2 0 1, vec2 1 1, vec2 1 (-1)]
  let lowers := List.map (fun v => rayleighQuotient 2 A v) testVecs
  let mins := List.foldl (fun (m : Rat) (x : Rat) => if x < m then x else m) (List.head! lowers) lowers
  let maxs := List.foldl (fun (m : Rat) (x : Rat) => if x > m then x else m) (List.head! lowers) lowers
  (mins, maxs)

#eval "=== Variational Examples ==="
#eval rayleighRitzApprox 3 2 1 (vec2 1 1)
#eval rayleighRitzMax2 5 2 3 [vec2 1 0, vec2 0 1, vec2 1 1]
#eval rayleighRitzMin2 5 2 3 [vec2 1 0, vec2 0 1, vec2 1 1]
#eval minimaxLower 5 2 3
#eval minimaxUpper 5 2 3
#eval eigenvalueEnclosure 5 2 3

end MiniSpectralTheoryPDE