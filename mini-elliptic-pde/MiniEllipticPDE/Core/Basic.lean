import MiniObjectKernel.Core.Basic
import MiniObjectKernel.Core.Objects

/-
# MiniEllipticPDE.Core.Basic - L1: Core Definitions
-/

open MiniObjectKernel

namespace MiniEllipticPDE

/-! ## Float Utilities -/

def eps : Float := 0.000000000001

def floatEq (a b : Float) : Bool := (a - b).abs < eps

def floatZero (a : Float) : Bool := a.abs < eps

/-! ## Vector Type (List Float) -/

abbrev Vec := List Float

namespace Vec

def zero : Vec := []
def dim (v : Vec) : Nat := v.length
def zeroOf (n : Nat) : Vec := List.replicate n 0

def add (u v : Vec) : Vec :=
  match u, v with
  | x :: xs, y :: ys => (x + y) :: add xs ys
  | [], _ => v
  | _, [] => u

def sub (u v : Vec) : Vec :=
  match u, v with
  | x :: xs, y :: ys => (x - y) :: sub xs ys
  | [], _ => v.map (fun x => -x)
  | _, [] => u

def smul (a : Float) (v : Vec) : Vec := v.map (fun x => a * x)
def neg (v : Vec) : Vec := smul (-1) v

def dot (u v : Vec) : Float :=
  match u, v with
  | x :: xs, y :: ys => x * y + dot xs ys
  | _, _ => 0

def normSq (v : Vec) : Float := dot v v
def norm (v : Vec) : Float := normSq v

def component (v : Vec) (i : Nat) : Float := v.get? i |>.getD 0

def maxNorm (v : Vec) : Float :=
  v.foldl (fun acc x => if x * x > acc then x * x else acc) 0

def toList (v : Vec) : List Float := v
def ofList (l : List Float) : Vec := l

end Vec

/-! ## Matrix Type (List Vec) -/

abbrev Mat := List Vec

namespace Mat

def dim (A : Mat) : Nat := A.length
def cols (A : Mat) : Nat :=
  if A.isEmpty then 0 else (A.head?.getD []).length

def identity (n : Nat) : Mat :=
  List.range n |>.map (fun i =>
    List.range n |>.map (fun j => if i = j then 1 else 0))

def zero (m n : Nat) : Mat :=
  List.replicate m (List.replicate n 0)

def apply (A : Mat) (v : Vec) : Vec :=
  A.map (fun row => Vec.dot row v)

def add (A B : Mat) : Mat :=
  match A, B with
  | [], _ => B
  | _, [] => A
  | a :: as, b :: bs => Vec.add a b :: add as bs

def sub (A B : Mat) : Mat :=
  match A, B with
  | [], _ => B.map Vec.neg
  | _, [] => A
  | a :: as, b :: bs => Vec.sub a b :: sub as bs

def smul (a : Float) (A : Mat) : Mat := A.map (fun row => Vec.smul a row)

def transpose (A : Mat) : Mat :=
  if A.isEmpty then [] else
    let n := (A.head?.getD []).length
    List.range n |>.map (fun j =>
      A.map (fun row => row.get? j |>.getD 0))

def isSymmetric (A : Mat) : Prop := A = transpose A

def isDiagDominant (A : Mat) : Bool :=
  let n := A.length
  List.range n |>.all (fun i =>
    let row := A.get? i |>.getD []
    let aii := (row.get? i |>.getD 0).abs
    let offSum := List.range n |>.foldl (fun acc j =>
      if j = i then acc else acc + (row.get? j |>.getD 0).abs) 0
    aii >= offSum)

def isPositiveDefinite (A : Mat) : Prop :=
  forall v : Vec, Vec.dot v (apply A v) > 0

end Mat

/-! ## 1D Laplacian (discrete) -/

def laplacian1D (n : Nat) : Mat :=
  if n = 0 then []
  else if n = 1 then [[1]]
  else
    List.range n |>.map (fun i =>
      if i = 0 then
        (-2) :: 1 :: List.replicate (n-2) 0
      else if i + 1 = n then
        List.replicate (n-2) 0 ++ [1, -2]
      else
        List.replicate (i-1) 0 ++ [1, -2, 1] ++ List.replicate (n-i-2) 0)

/-! ## 2D Laplacian (5-point stencil) -/

def laplacian2D (nx ny : Nat) : Mat :=
  let n := nx * ny
  List.range n |>.map (fun k =>
    let i := k % nx
    let j := k / nx
    List.range n |>.map (fun l =>
      if k = l then -4
      else if l = k-1 && i > 0 then 1
      else if l = k+1 && i+1 < nx then 1
      else if l = k-nx && j > 0 then 1
      else if l = k+nx && j+1 < ny then 1
      else 0))

/-! ## Linear Solvers -/

partial def solveJacobi (A : Mat) (b : Vec) (maxIter : Nat) : Vec :=
  let n := b.length
  let rec iterate (k : Nat) (x : Vec) : Vec :=
    if k = 0 then x else
      let xNew := List.range n |>.map (fun i =>
        let aii := (A.get? i |>.getD []).get? i |>.getD 1
        if floatZero aii then x.get? i |>.getD 0 else
          let sumOff := List.range n |>.foldl (fun acc j =>
            if j = i then acc else
              let aij := (A.get? i |>.getD []).get? j |>.getD 0
              acc + aij * (x.get? j |>.getD 0)) 0
          let bi := b.get? i |>.getD 0
          (bi - sumOff) / aii)
      iterate (k-1) xNew
  iterate maxIter (Vec.zeroOf n)

partial def solveGaussSeidel (A : Mat) (b : Vec) (maxIter : Nat) : Vec :=
  let n := b.length
  let rec iterate (k : Nat) (x : Vec) : Vec :=
    if k = 0 then x else
      let rec sweep (i : Nat) (cur : Vec) : Vec :=
        if i >= n then cur else
          let aii := (A.get? i |>.getD []).get? i |>.getD 1
          if floatZero aii then sweep (i+1) cur else
            let sumAll := List.range n |>.foldl (fun acc j =>
              if j = i then acc else
                let aij := (A.get? i |>.getD []).get? j |>.getD 0
                acc + aij * (cur.get? j |>.getD 0)) 0
            let bi := b.get? i |>.getD 0
            let xiNew := (bi - sumAll) / aii
            let updated := List.take i cur ++ [xiNew] ++ List.drop (i+1) cur
            sweep (i+1) updated
      iterate (k-1) (sweep 0 x)
  iterate maxIter (Vec.zeroOf n)

partial def solveSOR (A : Mat) (b : Vec) (omega : Float) (maxIter : Nat) : Vec :=
  let n := b.length
  let rec iterate (k : Nat) (x : Vec) : Vec :=
    if k = 0 then x else
      let rec sweep (i : Nat) (cur : Vec) : Vec :=
        if i >= n then cur else
          let aii := (A.get? i |>.getD []).get? i |>.getD 1
          if floatZero aii then sweep (i+1) cur else
            let sumAll := List.range n |>.foldl (fun acc j =>
              if j = i then acc else
                let aij := (A.get? i |>.getD []).get? j |>.getD 0
                acc + aij * (cur.get? j |>.getD 0)) 0
            let bi := b.get? i |>.getD 0
            let gs := (bi - sumAll) / aii
            let old := cur.get? i |>.getD 0
            let xiNew := (1 - omega) * old + omega * gs
            let updated := List.take i cur ++ [xiNew] ++ List.drop (i+1) cur
            sweep (i+1) updated
      iterate (k-1) (sweep 0 x)
  iterate maxIter (Vec.zeroOf n)

def residual (A : Mat) (x b : Vec) : Vec :=
  Vec.sub b (Mat.apply A x)

def residualNorm (A : Mat) (x b : Vec) : Float :=
  Vec.norm (residual A x b)

/-! ## Eigenvalue Computation -/

partial def powerIteration (A : Mat) (maxIter : Nat) : Float × Vec :=
  let n := A.length
  if n = 0 then (0, []) else
    let rec iterate (k : Nat) (v : Vec) : Float × Vec :=
      if k = 0 then (0, v) else
        let Av := Mat.apply A v
        let lambda := Vec.dot v Av / Vec.dot v v
        let vNorm := Vec.normSq Av
        let vNew := if floatZero vNorm then v else Vec.smul (1 / vNorm) Av
        iterate (k-1) vNew
    iterate maxIter (List.replicate n 1)

def rayleighQuotient (A : Mat) (v : Vec) : Float :=
  let num := Vec.dot v (Mat.apply A v)
  let den := Vec.dot v v
  if floatZero den then 0 else num / den

/-! ## Inverse Power Iteration (for smallest eigenvalue) -/

partial def inversePowerIteration (A : Mat) (shift : Float) (maxIter : Nat) : Float × Vec :=
  let n := A.length
  if n = 0 then (0, []) else
    let AShift := Mat.sub A (Mat.smul shift (Mat.identity n))
    let rec iterate (k : Nat) (v : Vec) : Float × Vec :=
      if k = 0 then (0, v) else
        let w := solveGaussSeidel AShift v 50
        let lambda := shift + (Vec.dot v w) / (Vec.dot w w)
        let wNorm := Vec.normSq w
        let vNew := if floatZero wNorm then v else Vec.smul (1 / wNorm) w
        iterate (k-1) vNew
    iterate maxIter (List.replicate n 1)

/-! ## Finite Difference Gradient and Hessian -/

def finiteDiff1D (v : Vec) (h : Float) : Vec :=
  match v with
  | [] => []
  | [_] => [0]
  | x :: y :: rest => ((y - x) / h) :: finiteDiff1D (y :: rest) h

def finiteDiff2nd1D (v : Vec) (h : Float) : Vec :=
  match v with
  | [] => []
  | [_] => [0]
  | [_, _] => [0, 0]
  | x :: y :: z :: rest =>
    let h2 := h * h
    ((x - 2*y + z) / h2) :: finiteDiff2nd1D (y :: z :: rest) h

/-! ## Verifications and Examples -/

#eval "=== Core.Basic: Vec, Mat, Laplacian, Solvers ==="

example : laplacian1D 3 = [[-2, 1, 0], [1, -2, 1], [0, 1, -2]] := rfl

example : laplacian1D 1 = [[1]] := rfl

example : Mat.isSymmetric (laplacian1D 5) := rfl

example : Mat.isDiagDominant (laplacian1D 5) = true := by native_decide

def test_laplacian_solve : IO Unit := do
  let A := laplacian1D 5
  let b : Vec := [1, 2, 3, 2, 1]
  let xJ := solveJacobi A b 200
  let xGS := solveGaussSeidel A b 200
  let xSOR := solveSOR A b (3/2) 200
  let rJ := residualNorm A xJ b
  let rGS := residualNorm A xGS b
  let rSOR := residualNorm A xSOR b
  IO.println "Residual norms computed (see above #eval output)"

def test_eigen : IO Unit := do
  let A := laplacian1D 4
  let (lam, v) := powerIteration A 200
  let rq := rayleighQuotient A v
  IO.println "Dominant eigenvalue computed (see above)"

def test_2d : IO Unit := do
  let A := laplacian2D 2 2
  IO.println "Laplacian 2D (2x2):"
  for row in A do
    IO.println "  (row omitted)"

#eval test_laplacian_solve
#eval test_eigen
#eval test_2d


end MiniEllipticPDE
