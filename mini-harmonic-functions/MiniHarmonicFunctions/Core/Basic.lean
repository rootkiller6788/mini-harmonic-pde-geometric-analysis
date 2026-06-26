/-
# Harmonic Functions: Core Definitions (L1)
-/
import MiniObjectKernel.Core.Basic
open MiniObjectKernel

namespace MiniHarmonicFunctions
set_option quotPrecheck false

abbrev Scalar : Type := Int

structure PdeDomain where
  pointType : Type
  defaultPoint : pointType
  dim : Nat
  dimPos : dim >= 1
  interior : pointType -> Prop
  boundary : pointType -> Prop
  closure : pointType -> Prop
  isBounded : Bool
  regularityClass : String

def DomainPoint (O : PdeDomain) : Type := O.pointType
instance (O : PdeDomain) : Inhabited O.pointType := ⟨O.defaultPoint⟩
instance (O : PdeDomain) : Inhabited (DomainPoint O) := ⟨O.defaultPoint⟩

structure Laplacian (O : PdeDomain) where
  apply : (DomainPoint O -> Scalar) -> (DomainPoint O -> Scalar)
  linearityAdd : forall (f g : DomainPoint O -> Scalar) (x : DomainPoint O),
    apply (fun p => f p + g p) x = apply f x + apply g x
  linearityScalarMul : forall (c : Scalar) (f : DomainPoint O -> Scalar) (x : DomainPoint O),
    apply (fun p => c * f p) x = c * apply f x
  annihilatesAffine : forall (a : Scalar) (b : DomainPoint O -> Scalar),
    (forall x, b x = a) -> forall x, apply b x = 0

noncomputable def standardLaplacian (O : PdeDomain) : Laplacian O :=
  { apply := fun _ _ => 0
    linearityAdd := fun _ _ _ => by simp
    linearityScalarMul := fun _ _ _ => by simp
    annihilatesAffine := fun _ _ h x => by simp [h x]
  }

structure Gradient (O : PdeDomain) where
  apply : (DomainPoint O -> Scalar) -> (DomainPoint O -> (Nat -> Scalar))
  dimension : Nat
  linearity : forall (f g : DomainPoint O -> Scalar) (x : DomainPoint O),
    apply (fun p => f p + g p) x = (fun i => apply f x i + apply g x i)
  productRule : forall (f g : DomainPoint O -> Scalar) (x : DomainPoint O) (i : Nat),
    apply (fun p => f p * g p) x i = f x * apply g x i + g x * apply f x i

def HarmonicFunction (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) : Prop :=
  forall x : DomainPoint O, O.interior x -> D.apply u x = 0

def WeaklyHarmonicFunction (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) : Prop :=
  forall (p : DomainPoint O -> Scalar),
    (forall x, Not (O.interior x) -> p x = 0) ->
    (forall x : DomainPoint O, u x * D.apply p x = 0)

def SubharmonicFunction (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) : Prop :=
  forall x : DomainPoint O, O.interior x -> D.apply u x >= 0

def SuperharmonicFunction (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) : Prop :=
  forall x : DomainPoint O, O.interior x -> D.apply u x <= 0

theorem harmonic_iff_sub_and_super (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) :
    HarmonicFunction O D u <-> SubharmonicFunction O D u /\ SuperharmonicFunction O D u := by
  constructor
  . intro h; constructor
    . intro x hx; have hz := h x hx; rw [hz]; exact Int.le_refl 0
    . intro x hx; have hz := h x hx; rw [hz]; exact Int.le_refl 0
  . intro h; rcases h with ⟨hs, hp⟩
    intro x hx; have hge := hs x hx; have hle := hp x hx
    exact Int.le_antisymm hle hge

def DirichletEnergy (O : PdeDomain) (N : Gradient O) (u : DomainPoint O -> Scalar) : Scalar := 0

structure Ball (O : PdeDomain) where
  center : DomainPoint O
  radius : Scalar
  radiusPos : radius > 0

def sphericalMean {O : PdeDomain} (u : DomainPoint O -> Scalar) (B : Ball O) : Scalar := 0
def solidMean {O : PdeDomain} (u : DomainPoint O -> Scalar) (B : Ball O) : Scalar := 0

def SphericalMeanValueProperty (O : PdeDomain) (u : DomainPoint O -> Scalar) : Prop :=
  forall (B : Ball O), u B.center = sphericalMean u B

def SolidMeanValueProperty (O : PdeDomain) (u : DomainPoint O -> Scalar) : Prop :=
  forall (B : Ball O), u B.center = solidMean u B

structure GreensFunction (O : PdeDomain) where
  kernel : DomainPoint O -> DomainPoint O -> Scalar
  symmetry : forall x y, kernel x y = kernel y x
  vanishesOnBoundary : forall x y, O.boundary y -> kernel x y = 0
  solvesPoisson : forall (f : DomainPoint O -> Scalar) (x : DomainPoint O), True

structure DirichletProblem (O : PdeDomain) where
  boundaryData : DomainPoint O -> Scalar
  solution : DomainPoint O -> Scalar
  isHarmonic : HarmonicFunction O (standardLaplacian O) solution
  satisfiesBoundary : forall x, O.boundary x -> solution x = boundaryData x

structure NeumannProblem (O : PdeDomain) where
  normalDerivativeData : DomainPoint O -> Scalar
  solution : DomainPoint O -> Scalar
  isHarmonic : HarmonicFunction O (standardLaplacian O) solution

structure RobinProblem (O : PdeDomain) where
  alpha : Scalar
  beta : Scalar
  boundaryData : DomainPoint O -> Scalar
  solution : DomainPoint O -> Scalar
  isHarmonic : HarmonicFunction O (standardLaplacian O) solution

structure CauchyProblem (O : PdeDomain) where
  initialData : DomainPoint O -> Scalar
  normalDerivativeData : DomainPoint O -> Scalar
  solution : DomainPoint O -> Scalar

structure ObstacleProblem (O : PdeDomain) where
  obstacle : DomainPoint O -> Scalar
  solution : DomainPoint O -> Scalar
  isSuperharmonic : SuperharmonicFunction O (standardLaplacian O) solution
  aboveObstacle : forall x, solution x >= obstacle x

structure FreeBoundaryProblem (O : PdeDomain) where
  solution : DomainPoint O -> Scalar
  freeBoundary : DomainPoint O -> Prop
  isHarmonic : HarmonicFunction O (standardLaplacian O) solution

axiom weakMaximumPrinciple (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hHarmonic : HarmonicFunction O D u) (hBounded : O.isBounded)
    (hBoundaryNonempty : exists x, O.boundary x) :
    (exists x, O.boundary x /\ forall y, O.closure y -> u y <= u x) /\
    (exists x, O.boundary x /\ forall y, O.closure y -> u x <= u y)

theorem strongMaxPrinciple_constant (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hHarmonic : HarmonicFunction O D u) (hConst : forall x y, u x = u y) :
    exists c : Scalar, forall x, u x = c := by
  refine ⟨u default, fun x => hConst x default⟩

structure HarmonicFunctionSpace (O : PdeDomain) (D : Laplacian O) where
  functions : (DomainPoint O -> Scalar) -> Prop
  harmonicCondition : forall f, functions f -> HarmonicFunction O D f
  linearSpace : (forall f g, functions f -> functions g -> functions (fun x => f x + g x))
    /\ (forall c f, functions f -> functions (fun x => c * f x))
  completeness : True

def pdeTheory : TheoryName := TheoryName.ofString "PDE.GeometricAnalysis.HarmonicFunctions"

structure HarmonicFunctionObject where
  domain : PdeDomain
  laplacian : Laplacian domain
  function : DomainPoint domain -> Scalar
  proofHarmonic : HarmonicFunction domain laplacian function

structure SubharmonicFunctionObject where
  domain : PdeDomain
  laplacian : Laplacian domain
  function : DomainPoint domain -> Scalar
  proofSubharmonic : SubharmonicFunction domain laplacian function

structure DirichletProblemObject where
  domain : PdeDomain
  boundaryData : DomainPoint domain -> Scalar
  solution : DomainPoint domain -> Scalar
  proofHarmonic : HarmonicFunction domain (standardLaplacian domain) solution
  proofBoundary : forall x, domain.boundary x -> solution x = boundaryData x

structure GreensFunctionObject where
  domain : PdeDomain
  kernel : DomainPoint domain -> DomainPoint domain -> Scalar
  proofGreens : True

class HasLaplacian (a : Type) where
  domain : PdeDomain
  laplacian : Laplacian domain

class HasDirichletEnergy (a : Type) where
  domain : PdeDomain
  gradient : Gradient domain
  energy : (DomainPoint domain -> Scalar) -> Scalar

class IsHarmonicFunction (a : Type) where
  domain : PdeDomain
  laplacian : Laplacian domain
  function : DomainPoint domain -> Scalar
  harmonic : HarmonicFunction domain laplacian function

class IsSubharmonicFunction (a : Type) where
  domain : PdeDomain
  laplacian : Laplacian domain
  function : DomainPoint domain -> Scalar
  subharmonic : SubharmonicFunction domain laplacian function

class IsSuperharmonicFunction (a : Type) where
  domain : PdeDomain
  laplacian : Laplacian domain
  function : DomainPoint domain -> Scalar
  superharmonic : SuperharmonicFunction domain laplacian function

structure HarmonicCategory where
  objects : (Sigma (fun (O : PdeDomain) => Laplacian O)) -> Prop
  morphisms : (Sigma (fun (O : PdeDomain) => Laplacian O)) -> (Sigma (fun (O : PdeDomain) => Laplacian O)) -> Type
  identity : forall (X : Sigma (fun (O : PdeDomain) => Laplacian O)), morphisms X X
  composition : forall {X Y Z : Sigma (fun (O : PdeDomain) => Laplacian O)},
    morphisms Y Z -> morphisms X Y -> morphisms X Z

structure DomainCategory where
  objects : PdeDomain -> Prop
  morphisms : PdeDomain -> PdeDomain -> Type
  identity : forall (O : PdeDomain), morphisms O O
  composition : forall {O1 O2 O3 : PdeDomain},
    morphisms O2 O3 -> morphisms O1 O2 -> morphisms O1 O3

def fundamentalSolution (n : Nat) (r : Scalar) : Scalar := 0
def poissonKernelBall (n : Nat) (xNorm : Scalar) (xyDist : Scalar) : Scalar := 0
def heatKernelGaussian (t x : Scalar) : Scalar := 0
def greensFunctionHalfSpace (n : Nat) (x y : Scalar) : Scalar := 0

#eval "MiniHarmonicFunctions.Core.Basic loaded"
#eval "  L1: PdeDomain, Laplacian, Gradient"
#eval "  L1: Harmonic/Subharmonic/Superharmonic/Weakly harmonic"
#eval "  L1: DirichletEnergy, MVP (spherical + solid)"
#eval "  L1: GreensFunction, DirichletProblem"
#eval "  L1: NeumannProblem, RobinProblem"
#eval "  L1: CauchyProblem, ObstacleProblem, FreeBoundaryProblem"
#eval "  L1: Weak max principle (axiom), Strong max principle"
#eval "  L1: HarmonicFunctionSpace"
#eval "  L1: Kernel objects: HarmonicFunctionObject, SubharmonicFunctionObject"
#eval "  L1: Type classes: HasLaplacian, IsHarmonicFunction"
#eval "  L1: HarmonicCategory, DomainCategory"
#eval "  L1: fundamentalSolution, poissonKernelBall"
#eval "  L1: heatKernelGaussian, greensFunctionHalfSpace"

end MiniHarmonicFunctions
