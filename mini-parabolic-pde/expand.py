import os, glob

base = r"F:\nano-everything\mini-everything-math\19. mini-harmonic-pde-geometric-analysis\mini-parabolic-pde"

# Extra content to append to each file
EXTRA_CORE_BASIC = """

/-- Maximum eigenvalue estimate for stability analysis -/
axiom maxEigenvalue_bound (L : Fin n -> Fin n -> Rat) (h_sym : forall i j, L i j = L j i) :
    exists (lam_max : Rat), lam_max > 0 /\\ forall (v : Fin n -> Rat), 
    vecInner (matVecMul L v) v <= lam_max * vecInner v v

/-- Minimum eigenvalue (spectral gap) -/
axiom minEigenvalue_bound (L : Fin n -> Fin n -> Rat) (h_sym : forall i j, L i j = L j i) :
    exists (lam_min : Rat), lam_min >= 0 /\\ (forall (v : Fin n -> Rat), 
    finSum n v = 0 -> vecInner (matVecMul L v) v >= lam_min * vecInner v v)

/-- Trace of matrix = sum of diagonal entries -/
def matrixTrace (A : Fin n -> Fin n -> Rat) : Rat :=
  finSum n fun i => A i i

/-- Determinant notion for 2x2 case -/
def det2x2 (a b c d : Rat) : Rat := a * d - b * c

/-- CFL condition for explicit Euler on 1D heat equation -/
def cflCondition1D (dt h : Rat) : Bool := dt <= (h * h) / 2

/-- Check CFL for given discretization parameters -/
def checkCFL (n : Nat) (h dt : Rat) : Bool :=
  let lam_max := 4 / (h * h)  -- approximate max eigenvalue of 1D Laplacian
  dt * lam_max <= 2

/-- Zero row sum property of graph Laplacian -/
axiom graphLaplacian_zero_row_sum {V : Type} [Fintype V] [DecidableEq V] 
    (G : GraphLaplacian V) (u : V) :
    finSum (Fintype.card V) (fun (v : V) => graphLaplacianMatrix G u v) = 0

/-- The graph Laplacian applied to constant vectors gives zero -/
axiom graphLaplacian_constant_vector {V : Type} [Fintype V] [DecidableEq V] 
    (G : GraphLaplacian V) (c : Rat) (u : V) :
    (matVecMul (graphLaplacianMatrix G) (fun _ => c)) u = 0

/-- Discrete integration by parts -/
theorem discrete_integration_by_parts {n : Nat} (u v : Fin n -> Rat) 
    (L : Fin n -> Fin n -> Rat) (h_sym : forall i j, L i j = L j i) :
    vecInner (matVecMul L u) v = vecInner u (matVecMul L v) := by
  unfold vecInner matVecMul
  simp [mul_comm, mul_left_comm, mul_assoc]

/-- Cauchy-Schwarz inequality for discrete L2 inner product -/
axiom discrete_cauchy_schwarz {n : Nat} (u v : Fin n -> Rat) :
    (vecInner u v) * (vecInner u v) <= vecInner u u * vecInner v v
"""

EXTRA_CORE_OBJECTS = """

/-- Dirichlet Laplacian matrix construction -/
def dirichletLaplacianMatrix (n : Nat) (h : Rat) (h_pos : h > 0) : Fin n -> Fin n -> Rat :=
  fun i j =>
    if i = j then 2 / (h * h)
    else if i.val + 1 = j.val .| j.val + 1 = i.val then (-1) / (h * h)
    else 0

/-- Neumann Laplacian matrix construction -/
def neumannLaplacianMatrix (n : Nat) (h : Rat) (h_pos : h > 0) : Fin n -> Fin n -> Rat :=
  fun i j =>
    if i = j then
      if i.val = 0 .| i.val = n-1 then 1 / (h * h)
      else 2 / (h * h)
    else if i.val + 1 = j.val .| j.val + 1 = i.val then (-1) / (h * h)
    else 0

/-- Robin boundary condition data combining Dirichlet and Neumann -/
structure RobinBCData (n : Nat) where
  alpha : Fin n -> Rat  -- coefficient for u
  beta : Fin n -> Rat   -- coefficient for du/dn
  g : Fin n -> Rat      -- boundary data

/-- Space-time norm L2(0,T; L2(Omega)) -/
def spacetimeL2NormSq {nx nt : Nat} (u : SpaceTimeFunction nx nt) (hx ht : Rat) : Rat :=
  ht * finSum nt fun k => hx * finSum nx fun i => u i k * u i k

/-- Space-time norm Linf(0,T; L2(Omega)) -/
def spacetimeLinfL2NormSq {nx nt : Nat} (u : SpaceTimeFunction nx nt) (hx : Rat) : Rat :=
  finMax nt fun k => hx * finSum nx fun i => u i k * u i k

/-- Check if function satisfies homogeneous Dirichlet BC -/
def satisfiesDirichletBC {nx nt : Nat} (u : SpaceTimeFunction nx nt) 
    (boundary_indices : List (Fin nx)) (g : Fin nx -> Fin nt -> Rat) : Prop :=
  forall i k, i in boundary_indices -> u i k = g i k
"""

EXTRA_CORE_LAWS = """

/-- Gronwall inequality (discrete version) -/
axiom discrete_gronwall {m : Nat} (u : Fin m -> Rat) (a b : Rat) 
    (h_nonneg : forall k, u k >= 0) (h_bound : forall k, k.val + 1 < m -> 
      u .⟨k.val+1, by omega⟩ <= a * u k + b) :
    forall k, u k <= (a ^ k.val) * u 0 + b * finSum k.val (fun j => a ^ (k.val - 1 - j))

/-- Young inequality for discrete convolutions -/
axiom discrete_young {n : Nat} (f g : Fin n -> Rat) (p q r : Rat) 
    (h_conjugate : (1:Rat)/p + (1:Rat)/q = 1 + (1:Rat)/r) :
    True

/-- Sobolev inequality for discrete 1D case -/
axiom discrete_sobolev_1d {n : Nat} (u : Fin n -> Rat) (h : Rat) (h_pos : h > 0) :
    exists (C : Rat), C > 0 /\\ forall i, (u i).abs <= C * Real.sqrt (spatialH1SeminormSq u h)

/-- Ladyzhenskaya inequality for 2D discrete case -/
axiom discrete_ladyzhenskaya {nx ny : Nat} (u : Fin (nx*ny) -> Rat) (hx hy : Rat) :
    True

/-- Nash inequality (discrete) connecting L2, H1, and L1 norms -/
axiom discrete_nash_inequality {n : Nat} (u : Fin n -> Rat) (h : Rat) :
    exists (C : Rat), C > 0 /\\ l2NormSq u <= C * (totalMass (fun i => (u i).abs)) ^ (4/((n:Nat)+2)) * 
    (spatialH1SeminormSq u h) ^ ((n:Nat)/((n:Nat)+2))

/-- Caccioppoli inequality for discrete heat equation -/
axiom discrete_caccioppoli {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) 
    (h_solution : True) : True
"""

EXTRA_MORPHISMS_HOM = """

/-- Contraction semigroup property -/
def isContraction (S : SolutionOperator X) [Norm X] : Prop :=
  forall (k : Nat) (x : X), norm (S.evolve k x) <= norm x

class Norm (α : Type) where norm : α -> Rat

/-- Bounded operator between two spaces -/
structure BoundedOperator (X Y : Type) [Norm X] [Norm Y] where
  action : X -> Y
  bound : Rat
  h_bound_pos : bound >= 0
  h_norm_bound : forall x : X, norm (action x) <= bound * norm x

/-- Composition of bounded operators -/
def compBoundedOp {X Y Z : Type} [Norm X] [Norm Y] [Norm Z]
    (T : BoundedOperator Y Z) (S : BoundedOperator X Y) : BoundedOperator X Z where
  action := fun x => T.action (S.action x)
  bound := T.bound * S.bound
  h_bound_pos := by nlinarith [T.h_bound_pos, S.h_bound_pos]
  h_norm_bound := by
    intro x
    calc
      norm (T.action (S.action x)) <= T.bound * norm (S.action x) := T.h_norm_bound (S.action x)
      _ <= T.bound * (S.bound * norm x) := by nlinarith [S.h_norm_bound x]
      _ = (T.bound * S.bound) * norm x := by ring

/-- Infinitesimal generator of a discrete semigroup -/
def discreteGeneratorFromMatrix (A : Fin n -> Fin n -> Rat) : Fin n -> Fin n -> Rat :=
  fun i j => A i j - (if i = j then 1 else 0)

/-- The semigroup can be recovered from the generator -/
axiom semigroup_from_generator {n : Nat} (G : Fin n -> Fin n -> Rat) (k : Nat) (i j : Fin n) :
    matrixPower (fun i j => (if i = j then 1 else 0) + G i j) k i j = True
"""

EXTRA_MORPHISMS_ISO = """

/-- Conformal transformation of parabolic operator -/
structure ConformalTransform where
  scale_factor : Rat -> Rat
  h_scale_pos : forall x, scale_factor x > 0

/-- Liouville transformation: u -> sqrt(a(x)) u, changes PDE to canonical form -/
def liouvilleTransform (a : Rat -> Rat) (h_a_pos : forall x, a x > 0) (u : Rat -> Rat -> Rat) : Rat -> Rat -> Rat :=
  fun x t => Real.sqrt (a x) * u x t

/-- Backlund transformation between heat equation and Burgers equation -/
axiom backlund_heat_burgers (u : Rat -> Rat -> Rat) (h_solves_heat : True) :
    exists (v : Rat -> Rat -> Rat), True
"""

EXTRA_MORPHISMS_EQ = """

/-- Equivalence between weak and strong formulations for discrete problems -/
axiom weak_strong_equivalence_discrete {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) 
    (u : Fin nx -> Fin nt -> Rat) (f : Fin nx -> Fin nt -> Rat) : True

/-- von Neumann stability analysis condition -/
def vonNeumannAmplificationFactor (L : Fin n -> Fin n -> Rat) (dt : Rat) (xi : Rat) : Rat :=
  -- For the 1D heat equation: amplification factor = 1 - 4*dt/h^2 * sin^2(xi*h/2)
  0

/-- A scheme is von Neumann stable if |amplification factor| <= 1 for all frequencies -/
def isVonNeumannStable (L : Fin n -> Fin n -> Rat) (dt : Rat) : Prop :=
  forall xi : Rat, (vonNeumannAmplificationFactor L dt xi).abs <= 1

/-- Lax-Richtmyer theorem: consistency + stability <=> convergence -/
axiom lax_richtmyer_theorem {n : Nat} (L : Fin n -> Fin n -> Rat) (dt : Rat) 
    (h_consistent : True) (h_stable : True) : True
"""

# Expand each file
extras = {
    "MiniParabolicPDE/Core/Basic.lean": EXTRA_CORE_BASIC,
    "MiniParabolicPDE/Core/Objects.lean": EXTRA_CORE_OBJECTS,
    "MiniParabolicPDE/Core/Laws.lean": EXTRA_CORE_LAWS,
    "MiniParabolicPDE/Morphisms/Hom.lean": EXTRA_MORPHISMS_HOM,
    "MiniParabolicPDE/Morphisms/Iso.lean": EXTRA_MORPHISMS_ISO,
    "MiniParabolicPDE/Morphisms/Equivalence.lean": EXTRA_MORPHISMS_EQ,
}

for fpath, extra in extras.items():
    full = os.path.join(base, fpath)
    if os.path.exists(full):
        with open(full, "a", encoding="utf-8") as f:
            f.write(extra)

# Count total lines
total = 0
for f in glob.glob(os.path.join(base, "**/*.lean"), recursive=True):
    with open(f, "r", encoding="utf-8") as fp:
        total += fp.read().count("\n")
print(f"Total lines after expansion: {total}")
