import MiniEllipticPDE

/-
# Smoke tests for MiniEllipticPDE
-/

open MiniEllipticPDE

#eval "Smoke test: MiniEllipticPDE compiles"

def test_real_field : IO Unit := do
  let x : Float := 1/2
  let y : Float := 1/3
  let s := x + y
  assert! s = 5/6
  IO.println "(output)"

def test_finite_vector : IO Unit := do
  let u : FiniteVector := [1, 2, 3]
  let v : FiniteVector := [4, 5, 6]
  let dot := FiniteVector.inner u v
  assert! dot = 32
  IO.println "(output)"

def test_laplacian : IO Unit := do
  let n := 4
  let A := laplacian1D n
  IO.println "(output)"

#eval test_real_field
#eval test_finite_vector
#eval test_laplacian

def test_convergence : IO Unit := do
  let n := 4
  let A := laplacian1D n
  let b : Vec := [1, 2, 3, 4]
  let r0 := residualNorm A (Vec.zeroOf n) b
  let u := solveGaussSeidel A b 100
  let r100 := residualNorm A u b
  IO.println "(output)"
  IO.println "(output)"
  IO.println "(output)"

def test_cg : IO Unit := do
  let A := laplacian1D 5
  let b : Vec := [1, -1, 2, -2, 3]
  let u_cg := solveCG A b 20
  let u_gs := solveGaussSeidel A b 100
  let r_cg := residualNorm A u_cg b
  let r_gs := residualNorm A u_gs b
  IO.println "(output)"
  IO.println "(output)"

def test_2d : IO Unit := do
  let nx := 3
  let ny := 3
  let A := laplacian2D nx ny
  IO.println "(output)"
  IO.println "(output)"
  IO.println "(output)"
  let b := Vec.zeroOf (nx*ny)
  let u := solveGaussSeidel A b 100
  IO.println "(output)"

def test_eigenvalues : IO Unit := do
  let A := laplacian1D 4 |> Mat.smul (-1)
  let (lam, v) := powerIteration A 200
  let (lam_small, _) := inversePowerIteration A 0 200
  IO.println "(output)"
  IO.println "(output)"
  let rq := rayleighQuotient A v
  IO.println "(output)"

def test_solver_comparison : IO Unit := do
  let A := laplacian1D 6
  let b : Vec := [1, 0, 2, 0, 3, 0]
  let methods : List (String × (Mat -> Vec -> Nat -> Vec)) := [
    ("Jacobi", solveJacobi),
    ("Gauss-Seidel", solveGaussSeidel),
    ("SOR(1.3)", fun a bi i => solveSOR a bi (13/10) i),
    ("SOR(1.5)", fun a bi i => solveSOR a bi (3/2) i),
    ("CG", fun a bi i => solveCG a bi i)
  ]
  for (name, solver) in methods do
    let u := solver A b 50
    let r := residualNorm A u b
    IO.println "(output)"

#eval test_convergence
#eval test_cg
#eval test_2d
#eval test_eigenvalues
#eval test_solver_comparison
