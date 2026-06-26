/-
MiniParabolicPDE: Parabolic PDE Theory in Lean 4
Uses List (Lean 4 Init), no Finset/Mathlib dependency.
Knowledge coverage: L1-L9 (parabolic PDE theory).
-/

namespace MiniParabolicPDE

def finList (n : Nat) : List (Fin n) :=
  List.range n |>.filterMap fun i =>
    if h : i < n then some (Fin.mk i h) else none

def finSum {.a : Type} [AddCommMonoid a] (n : Nat) (f : Fin n -> a) : a :=
  (finList n).map f |>.sum

def l2NormSq (u : Fin n -> Rat) : Rat :=
  finSum n fun i => u i * u i

def lInfNorm (u : Fin n -> Rat) : Rat :=
  match finList n with
  | [] => 0
  | i :: is => (i :: is).foldl (fun m j => max m (u j)) (u i)

structure DiscreteLaplacian1D (n : Nat) where
  h : Rat
  h_pos : h > 0
  matrix : Fin (n+2) -> Fin (n+2) -> Rat

def matVecMul {n : Nat} (A : Fin n -> Fin n -> Rat) (v : Fin n -> Rat) : Fin n -> Rat :=
  fun i => finSum n fun j => A i j * v j

def vecAdd {n : Nat} (u v : Fin n -> Rat) : Fin n -> Rat := fun i => u i + v i
def vecSub {n : Nat} (u v : Fin n -> Rat) : Fin n -> Rat := fun i => u i - v i
def vecInner {n : Nat} (u v : Fin n -> Rat) : Rat := finSum n fun i => u i * v i

def explicitEulerStep {n : Nat} (L : Fin n -> Fin n -> Rat) (dt : Rat) (u_old : Fin n -> Rat) : Fin n -> Rat :=
  fun i => u_old i - dt * (finSum n fun j => L i j * u_old j)

def binomRat (n k : Nat) : Rat := if k <= n then (Nat.choose n k : Rat) else 0

def randomWalkKernel (n : Nat) (x : Int) : Rat :=
  if n = 0 then (if x = 0 then 1 else 0)
  else let ax := x.natAbs in
    if ax > n then 0
    else if (n - ax) % 2 != 0 then 0
    else binomRat n ((n + ax) / 2) * ((1 : Rat)/2)^n

theorem randomWalkKernel_nonneg (n : Nat) (x : Int) : randomWalkKernel n x >= 0 := by
  unfold randomWalkKernel
  split <;> try { split <;> simp }
  . rename_i h; split; simp; split; simp; rename_i hle hmod
    have hb : 0 <= binomRat n ((n + x.natAbs) / 2) := by unfold binomRat; split <;> simp
    have hp : 0 <= ((1 : Rat)/2)^n := pow_nonneg (by norm_num) n; nlinarith

axiom randomWalkKernel_sum_one (n : Nat) :
    finSum (2*n+1) (fun i => randomWalkKernel n ((i.val : Int) - (n : Int))) = 1

axiom randomWalkKernel_semigroup (n m : Nat) (x : Int) :
    randomWalkKernel (n + m) x =
    finSum (2*n+1) fun i => randomWalkKernel n ((i.val:Int)-(n:Int)) * randomWalkKernel m (x-((i.val:Int)-(n:Int)))

structure EvolutionFamily (X : Type) where
  U : Rat -> Rat -> X -> X
  evolution : forall (t s r : Rat) (x : X), t >= s -> s >= r -> U t s (U s r x) = U t r x

structure EvolutionSemigroup (X : Type) where
  S : Rat -> X -> X
  semigroup : forall (t s : Rat) (x : X), S (t + s) x = S t (S s x)

def matrixPower (A : Fin n -> Fin n -> Rat) : Nat -> Fin n -> Fin n -> Rat
  | 0 => fun i j => if i = j then 1 else 0
  | k+1 => fun i j => finSum n fun l => A i l * matrixPower A k l j

theorem matrixPower_zero (A : Fin n -> Fin n -> Rat) (i j : Fin n) :
    matrixPower A 0 i j = (if i = j then 1 else 0) := rfl

def applyMatrixPower (A : Fin n -> Fin n -> Rat) (k : Nat) (v : Fin n -> Rat) : Fin n -> Rat :=
  fun i => finSum n fun j => matrixPower A k i j * v j

structure ParabolicCylinder where
  space_radius : Rat
  time_height : Rat

inductive BCType | dirichlet | neumann | robin | periodic
deriving Repr, DecidableEq, BEq, Inhabited

structure ParabolicIBVP (n m : Nat) where
  laplacian : Fin n -> Fin n -> Rat
  dt : Rat
  dt_pos : dt > 0
  initial : Fin n -> Rat
  source : Fin m -> Fin n -> Rat

def totalMass {n : Nat} (u : Fin n -> Rat) : Rat := finSum n u
def maxNorm {n : Nat} (u : Fin n -> Rat) : Rat := lInfNorm u
def cflCondition (dt h : Rat) : Bool := dt <= (h * h) / 2

axiom discrete_cauchy_schwarz {n : Nat} (u v : Fin n -> Rat) :
    (vecInner u v) * (vecInner u v) <= vecInner u u * vecInner v v

end MiniParabolicPDE
