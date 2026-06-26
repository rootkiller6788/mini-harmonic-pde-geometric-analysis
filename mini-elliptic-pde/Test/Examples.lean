import MiniEllipticPDE

/-
# Example runs for MiniEllipticPDE
-/

open MiniEllipticPDE

#eval "Examples test suite"

def test_jacobi : IO Unit := do
  let n := 3
  let A := laplacian1D n
  let b : FiniteVector := [1, 2, 3]
  let x := jacobiIteration A b 50
  IO.println "(output)"

def test_helmholtz : IO Unit := do
  let n := 4
  let k : Float := 1/2
  let f : FiniteVector := [0, 1, 1, 0]
  let h : Float := 1
  let u := solveHelmholtz1D n k f h
  IO.println "(output)"

def test_poisson_gs : IO Unit := do
  let n := 5
  let f : FiniteVector := [1, 1, 1, 1, 1]
  let h : Float := 1
  let u := solvePoisson1D n f h 0 0
  IO.println "(output)"

def test_rayleigh : IO Unit := do
  let A := laplacian1D 3
  let x : FiniteVector := [1, 0, -1]
  let rq := rayleighQuotientDiscrete A x
  IO.println "(output)"

#eval test_jacobi
#eval test_helmholtz
#eval test_poisson_gs
#eval test_rayleigh
