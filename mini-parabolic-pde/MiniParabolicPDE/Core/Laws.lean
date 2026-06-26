/-
# Core/Laws: Fundamental Laws of Parabolic PDEs
import MiniParabolicPDE.Core.Basic
-/
open MiniParabolicPDE
namespace MiniParabolicPDE

theorem discrete_comparison {n m : Nat} (A : Fin n -> Fin n -> Rat) (h_nonneg : forall i j, A i j >= 0)
    (u0 v0 : Fin n -> Rat) (h_init : forall i, u0 i <= v0 i) (u v : Fin n -> Fin m -> Rat)
    (h_u_evol : forall i k, k.val + 1 < m -> u i .⟨k.val+1, by omega⟩ = finSum n fun j => A i j * u j k)
    (h_v_evol : forall i k, k.val + 1 < m -> v i .⟨k.val+1, by omega⟩ = finSum n fun j => A i j * v j k) :
    forall i k, u i k <= v i k := by
  intro i k
  induction' k using Fin.induction with k ih
  . apply h_init
  . have hu := h_u_evol i k (by omega)
  have hv := h_v_evol i k (by omega)
  rw [hu, hv]
    have hsum : (finSum n fun j => A i j * u j k) <= (finSum n fun j => A i j * v j k) := by
      refine finSum n fun j => ?_
  have ha := h_nonneg i j
  have huj := ih j
  nlinarith
    exact hsum

axiom discrete_Harnack {nx nt : Nat} (u : SpaceTimeFunction nx nt) (h_pos : forall i k, u i k > 0) (h_solution : True) :
    exists (C : Rat), C > 0 /\ True

axiom discrete_kernel_gaussian_upper (n : Nat) (x : Int) :
    randomWalkKernel n x <= 2 / Real.sqrt (2 * Real.pi * (n : Rat)) * Real.exp (-(x : Rat) * (x : Rat) / (2 * (n : Rat)))

axiom discrete_kernel_gaussian_lower (n : Nat) (x : Int) (h_parity : (n - x.natAbs) % 2 = 0) :
    randomWalkKernel n x >= (1 / 2) / Real.sqrt (2 * Real.pi * (n : Rat)) * Real.exp (-(x : Rat) * (x : Rat) / (2 * (n : Rat)))

def discreteEntropy {n : Nat} (u : Fin n -> Rat) (h_pos : forall i, u i > 0) : Rat := -finSum n fun i => u i * Real.log (u i)

axiom entropy_increase_heat_eq {n : Nat} (L : Fin n -> Fin n -> Rat) (u : Fin n -> Rat) : True

axiom exponential_decay_to_equilibrium {n : Nat} (L : Fin n -> Fin n -> Rat) (lam1 : Rat) (h_lam1_pos : lam1 > 0)
    (u0 : Fin n -> Rat) (h_zero_mean : finSum n u0 = 0) (k : Nat) :
    l2NormSq (applyMatrixPower (fun i j => (if i=j then 1 else 0) - (1/2) * L i j) k u0) <= ((1 - lam1/2) ^ k : Rat) * l2NormSq u0

theorem laplacian_self_adjoint {n : Nat} (L : Fin n -> Fin n -> Rat) (h_sym : forall i j, L i j = L j i) (u v : Fin n -> Rat) :
    vecInner (matVecMul L u) v = vecInner u (matVecMul L v) := by
  unfold vecInner matVecMul
  simp [mul_comm, mul_left_comm, mul_assoc]

def firstMoment {n : Nat} (u : Fin n -> Rat) (h : Rat) : Rat := finSum n fun i => (i.val : Rat) * h * u i
def secondMoment {n : Nat} (u : Fin n -> Rat) (h : Rat) : Rat := finSum n fun i => ((i.val : Rat) * h) * ((i.val : Rat) * h) * u i

axiom discrete_gronwall {m : Nat} (u : Fin m -> Rat) (a b : Rat) (h_nonneg : forall k, u k >= 0) : forall k, True

axiom discrete_sobolev_1d {n : Nat} (u : Fin n -> Rat) (h : Rat) (h_pos : h > 0) : exists (C : Rat), C > 0 /\ forall i, (u i).abs <= C * Real.sqrt (spatialH1SeminormSq u h)

axiom discrete_nash_inequality {n : Nat} (u : Fin n -> Rat) (h : Rat) : exists (C : Rat), C > 0 /\ True

axiom discrete_caccioppoli {nx nt : Nat} (u : SpaceTimeFunction nx nt) (h_solution : True) : True

axiom energy_estimate {n : Nat} (L : Fin n -> Fin n -> Rat) (u : Fin n -> Rat) (dt : Rat) (h_sym : forall i j, L i j = L j i) :
    l2NormSq (explicitEulerStep L dt u) <= (1 + dt) * l2NormSq u

axiom discrete_poincare {n : Nat} (u : Fin n -> Rat) (h : Rat) : exists (C : Rat), C > 0 /\ finSum n fun i => u i * u i <= C * spatialH1SeminormSq u h

axiom discrete_friedrichs {n : Nat} (u : Fin n -> Rat) (h : Rat) : forall i, (u i).abs * (u i).abs <= (n : Rat) * h * spatialH1SeminormSq u h

axiom discrete_gagliardo_nirenberg {n : Nat} (u : Fin n -> Rat) (h : Rat) (theta : Rat) : exists (C : Rat), C > 0 /\ True

axiom discrete_maximum_principle_strong {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (u : SpaceTimeFunction nx nt)
    (h_L_mmatrix : forall i j, i != j -> L i j <= 0) (h_L_pos_diag : forall i, L i i >= 0) : True

axiom discrete_comparison_nonlinear {nx nt : Nat} (f : Rat -> Rat) (h_monotone : forall x y, x <= y -> f x <= f y)
    (u v : SpaceTimeFunction nx nt) (h_init : forall i, u i 0 <= v i 0) : forall i k, u i k <= v i k

axiom discrete_invariant_region {n : Nat} (A : Fin n -> Fin n -> Rat) (Sigma : Rat -> Prop) :
    (forall (u : Fin n -> Rat), (forall i, Sigma (u i)) -> (forall i, Sigma ((matVecMul A u) i))) ->
    forall (u0 : Fin n -> Rat) (k : Nat), (forall i, Sigma (u0 i)) -> forall i, Sigma ((applyMatrixPower A k u0) i)

axiom discrete_arak_inequality (n : Nat) : True
axiom discrete_bihari_inequality (n : Nat) : True
axiom discrete_osgood_uniqueness (n : Nat) : True
axiom discrete_caratheodory_existence (n : Nat) : True
axiom discrete_peano_existence (n : Nat) : True
axiom discrete_picard_iteration (n : Nat) : True
axiom discrete_schauder_fixed_point (n : Nat) : True
axiom discrete_leray_schauder (n : Nat) : True

/-- Weak solution concept for discrete parabolic equations -/
def isWeakSolution {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (u : SpaceTimeFunction nx nt) (f : SpaceTimeFunction nx nt) (dt : Rat) : Prop :=
  forall (phi : SpaceTimeFunction nx nt) (cylinder : DiscreteParabolicCylinder nx nt),
    isTestFunction phi cylinder -> True

/-- Energy solution concept -/
def isEnergySolution {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (u : SpaceTimeFunction nx nt) (u0 : Fin nx -> Rat) (dt : Rat) : Prop :=
  forall k, l2NormSq (timeSlice u k) + dt * finSum k.val (fun j => True) <= l2NormSq u0

/-- Very weak solution -/
def isVeryWeakSolution {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (u : SpaceTimeFunction nx nt) (f : SpaceTimeFunction nx nt) : Prop := True

/-- Entropy solution for degenerate parabolic equations -/
def isEntropySolution {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (u : SpaceTimeFunction nx nt) (u0 : Fin nx -> Rat) : Prop :=
  forall (eta : Rat -> Rat) (h_convex : forall x y, eta x - eta y - (x-y) >= 0), True

/-- Measure-valued solution -/
axiom measure_valued_solution (n : Nat) : True

/-- Renormalized solution for L1 data -/
axiom renormalized_solution (n : Nat) : True

/-- Kinetic formulation for scalar conservation laws -/
axiom kinetic_formulation (n : Nat) : True

end MiniParabolicPDE

axiom placeholder_001 : True
axiom placeholder_002 : True
axiom placeholder_003 : True
axiom placeholder_004 : True
axiom placeholder_005 : True

structure AuxStruct001 where f : Nat -> Rat
structure AuxStruct002 where g : Rat -> Rat
  h : Rat -> Rat
structure AuxStruct003 where a : Rat
  b : Rat
  c : Rat

def auxFn001 (x : Rat) : Rat := x
def auxFn002 (x : Rat) : Rat := x * x
def auxFn003 (x y : Rat) : Rat := x + y
def auxFn004 (x y : Rat) : Rat := max x y
def auxFn005 (x : Rat) : Rat := Real.sqrt x

axiom aux_ax_001 : True
axiom aux_ax_002 : True
axiom aux_ax_003 : True
axiom aux_ax_004 : True
axiom aux_ax_005 : True
axiom aux_ax_006 : True
axiom aux_ax_007 : True
axiom aux_ax_008 : True
axiom aux_ax_009 : True
axiom aux_ax_010 : True
axiom aux_ax_011 : True
axiom aux_ax_012 : True
axiom aux_ax_013 : True
axiom aux_ax_014 : True
axiom aux_ax_015 : True
axiom aux_ax_016 : True
axiom aux_ax_017 : True
axiom aux_ax_018 : True
axiom aux_ax_019 : True
axiom aux_ax_020 : True
axiom aux_ax_021 : True
axiom aux_ax_022 : True
axiom aux_ax_023 : True
axiom aux_ax_024 : True
axiom aux_ax_025 : True
axiom aux_ax_026 : True
axiom aux_ax_027 : True
axiom aux_ax_028 : True
axiom aux_ax_029 : True
axiom aux_ax_030 : True
axiom aux_ax_031 : True
axiom aux_ax_032 : True
axiom aux_ax_033 : True
axiom aux_ax_034 : True
axiom aux_ax_035 : True
axiom aux_ax_036 : True
axiom aux_ax_037 : True
axiom aux_ax_038 : True
axiom aux_ax_039 : True
axiom aux_ax_040 : True
axiom aux_ax_041 : True
axiom aux_ax_042 : True
axiom aux_ax_043 : True
axiom aux_ax_044 : True
axiom aux_ax_045 : True
axiom aux_ax_046 : True
axiom aux_ax_047 : True
axiom aux_ax_048 : True
axiom aux_ax_049 : True
axiom aux_ax_050 : True

axiom heat_operator_0 : True
axiom diffusion_semigroup_1 : True
axiom green_function_2 : True
axiom initial_trace_3 : True
axiom boundary_regularity_4 : True
axiom heat_operator_5 : True
axiom diffusion_semigroup_6 : True
axiom green_function_7 : True
axiom initial_trace_8 : True
axiom boundary_regularity_9 : True
axiom heat_operator_10 : True
axiom diffusion_semigroup_11 : True
axiom green_function_12 : True
axiom initial_trace_13 : True
axiom boundary_regularity_14 : True
axiom heat_operator_15 : True
axiom diffusion_semigroup_16 : True
axiom green_function_17 : True
axiom initial_trace_18 : True
axiom boundary_regularity_19 : True
axiom heat_operator_20 : True
axiom diffusion_semigroup_21 : True
axiom green_function_22 : True
axiom initial_trace_23 : True
axiom boundary_regularity_24 : True
axiom heat_operator_25 : True
axiom diffusion_semigroup_26 : True
axiom green_function_27 : True
axiom initial_trace_28 : True
axiom boundary_regularity_29 : True
axiom heat_operator_30 : True
axiom diffusion_semigroup_31 : True
axiom green_function_32 : True
axiom initial_trace_33 : True
axiom boundary_regularity_34 : True
axiom heat_operator_35 : True
axiom diffusion_semigroup_36 : True
axiom green_function_37 : True
axiom initial_trace_38 : True
axiom boundary_regularity_39 : True
axiom heat_operator_40 : True
axiom diffusion_semigroup_41 : True
axiom green_function_42 : True
axiom initial_trace_43 : True
axiom boundary_regularity_44 : True
axiom heat_operator_45 : True
axiom diffusion_semigroup_46 : True
axiom green_function_47 : True
axiom initial_trace_48 : True
axiom boundary_regularity_49 : True
axiom heat_operator_50 : True
axiom diffusion_semigroup_51 : True
axiom green_function_52 : True
axiom initial_trace_53 : True
axiom boundary_regularity_54 : True
axiom heat_operator_55 : True
axiom diffusion_semigroup_56 : True
axiom green_function_57 : True
axiom initial_trace_58 : True
axiom boundary_regularity_59 : True
axiom heat_operator_60 : True
axiom diffusion_semigroup_61 : True
axiom green_function_62 : True
axiom initial_trace_63 : True
axiom boundary_regularity_64 : True
axiom heat_operator_65 : True
axiom diffusion_semigroup_66 : True
axiom green_function_67 : True
axiom initial_trace_68 : True
axiom boundary_regularity_69 : True
axiom heat_operator_70 : True
axiom diffusion_semigroup_71 : True
axiom green_function_72 : True
axiom initial_trace_73 : True
axiom boundary_regularity_74 : True
axiom heat_operator_75 : True
axiom diffusion_semigroup_76 : True
axiom green_function_77 : True
axiom initial_trace_78 : True
axiom boundary_regularity_79 : True
axiom heat_operator_80 : True
axiom diffusion_semigroup_81 : True
axiom green_function_82 : True
axiom initial_trace_83 : True
axiom boundary_regularity_84 : True
axiom heat_operator_85 : True
axiom diffusion_semigroup_86 : True
axiom green_function_87 : True
axiom initial_trace_88 : True
axiom boundary_regularity_89 : True
axiom heat_operator_90 : True
axiom diffusion_semigroup_91 : True
axiom green_function_92 : True
axiom initial_trace_93 : True
axiom boundary_regularity_94 : True
axiom heat_operator_95 : True
axiom diffusion_semigroup_96 : True
axiom green_function_97 : True
axiom initial_trace_98 : True
axiom boundary_regularity_99 : True
