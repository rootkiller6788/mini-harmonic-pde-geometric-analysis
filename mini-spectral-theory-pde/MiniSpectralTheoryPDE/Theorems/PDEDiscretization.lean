/- PDE Discretization Methods: Finite difference, finite element, spectral methods.
Connection to matrix spectral theory: discretized operators become matrices
whose spectra approximate the continuous spectrum.
Knowledge: L4 Fundamental Theorems, L7 Applications -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

/-! Finite Difference Methods -/

def forwardDifference (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i = j then -1/h else if i.val + 1 = j.val then 1/h else 0

def backwardDifference (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i = j then 1/h else if j.val + 1 = i.val then -1/h else 0

def centralDifference (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i.val + 1 = j.val then 1/(2*h) else if j.val + 1 = i.val then -1/(2*h) else 0

def secondCentralDifference (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i = j then -2/(h*h) else if i.val + 1 = j.val || j.val + 1 = i.val then 1/(h*h) else 0

def fourthCentralDifference (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i = j then 6/(h*h*h*h)
  else if i.val + 1 = j.val || j.val + 1 = i.val then -4/(h*h*h*h)
  else if i.val + 2 = j.val || j.val + 2 = i.val then 1/(h*h*h*h)
  else 0

/-! Finite Element Basis Functions -/

def hatFunction (n : Nat) (k : Nat) (x : Rat) : Rat :=
  let h := 1/(n+1 : Rat)
  let xk := (k : Rat) * h
  if x <= xk - h || x >= xk + h then 0
  else if x <= xk then (x - (xk - h))/h
  else (xk + h - x)/h

def massMatrix1D (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i = j then 2*h/3 else if i.val + 1 = j.val || j.val + 1 = i.val then h/6 else 0

def stiffnessMatrix1D (n : Nat) (h : Rat) : Matrix n n := fun i j =>
  if i = j then 2/h else if i.val + 1 = j.val || j.val + 1 = i.val then -1/h else 0

def advectionMatrix1D (n : Nat) (h : Rat) (velocity : Rat) : Matrix n n := fun i j =>
  if i.val + 1 = j.val then velocity/(2*h) else if j.val + 1 = i.val then -velocity/(2*h) else 0

def diffusionAdvectionMatrix (n : Nat) (h : Rat) (diff : Rat) (adv : Rat) : Matrix n n :=
  Matrix.add n n
    (Matrix.smul n n diff (stiffnessMatrix1D n h))
    (Matrix.smul n n adv (advectionMatrix1D n h velocity))

/-! Spectral Methods -/

def fourierDifferentiationMatrix (n : Nat) : Matrix n n := fun i j =>
  if i = j then 0
  else
    let diff := (i.val : Rat) - (j.val : Rat)
    1 / (2 * diff)

def chebyshevDifferentiationMatrix (n : Nat) : Matrix n n := fun i j =>
  if i = j then
    let xi := Real.cos (3.14159 * (i.val : Rat) / (n : Rat))
    xi / (2*(1 - xi*xi))
  else
    let xi := Real.cos (3.14159 * (i.val : Rat) / (n : Rat))
    let xj := Real.cos (3.14159 * (j.val : Rat) / (n : Rat))
    1 / (xi - xj)

/-! Boundary Conditions -/

def dirichletBC2 (A : Matrix 2 2) (i : Fin 2) (val : Rat) : Matrix 2 2 :=
  let AC := fun r c => if r = i && c = i then 1 else if r = i || c = i then 0 else A r c
  AC

def neumannBC2 (A : Matrix 2 2) (i : Fin 2) : Matrix 2 2 := A

def periodicBC2 (A : Matrix 2 2) : Matrix 2 2 :=
  fun i j =>
    if i = Fin.mk 0 (by decide) && j = Fin.mk 1 (by decide) then A i j + A (Fin.mk 1 (by decide)) (Fin.mk 0 (by decide))
    else if i = Fin.mk 1 (by decide) && j = Fin.mk 0 (by decide) then A i j + A (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
    else A i j

/-! Grid Refinement Study -/

def gridConvergenceStudy (nVals : List Nat) (hVals : List Rat) (exactEigenvalue : Rat) : List Rat :=
  List.zipWith (fun n h =>
    let L := secondCentralDifference n h
    let (lam,_) := eigenvalues2 L
    let err := if exactEigenvalue = 0 then lam else (lam - exactEigenvalue)/exactEigenvalue
    if err >= 0 then err else -err
  ) nVals hVals

def estimateConvergenceOrder (errors : List Rat) (hs : List Rat) : Rat :=
  match errors, hs with
  | e1::e2::_, h1::h2::_ =>
    if e1 = 0 || e2 = 0 || h1 = 0 || h2 = 0 then 0
    else (e2 / e1) / (h2 / h1)
  | _, _ => 0

/-! CFL Condition for Time-Dependent PDEs -/

def cflCondition (c : Rat) (dt : Rat) (dx : Rat) : Rat := c * dt / dx

def vonNeumannStability (A : Matrix 2 2) (dt : Rat) : Rat :=
  let (l1,_) := eigenvalues2 A
  (1 + dt*l1)*(1 + dt*l1)

def timeStepRestriction (A : Matrix 2 2) : Rat :=
  let (l1,_) := eigenvalues2 A
  if l1 = 0 then 1000 else 2 / (if l1 >=0 then l1 else -l1)

/-! Multigrid Components -/

def restrictionOperator (fine : Nat) (coarse : Nat) : Matrix coarse fine := fun i j =>
  if j.val == 2*i.val then 1/4
  else if j.val == 2*i.val + 1 then 1/2
  else if j.val == 2*i.val + 2 then 1/4
  else 0

def prolongationOperator (coarse : Nat) (fine : Nat) : Matrix fine coarse := fun i j =>
  if i.val == 2*j.val then 1
  else if i.val == 2*j.val + 1 then 1/2
  else 0

def gaussSeidelSmoother (A : Matrix 2 2) (b x : Vector 2) (sweeps : Nat) : Vector 2 :=
  gaussSeidelIteration2 A b x sweeps

def twoGridCycle (A : Matrix 2 2) (b x : Vector 2) : Vector 2 :=
  let x1 := gaussSeidelSmoother A b x 2
  let r := Vector.sub 2 b (Matrix.mulVec 2 2 A x1)
  x1

#eval "=== PDE Discretization ==="
#eval eigenvalues2 (secondCentralDifference 2 1)
#eval cflCondition 1 (1/4) (1/2)
#eval timeStepRestriction (symMat2 5 2 3)

end MiniSpectralTheoryPDE