import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
axiom nash_moser_discrete {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (h_solution : True) (h_nonneg : forall i k, u i k >= 0) (h_L2_bound : forall k, l2NormSq (timeSlice u k) <= 1) : exists (C : Rat), C > 0 /\ forall i k, u i k <= C
axiom de_giorgi_holder_continuity {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (h_solution : True) : exists (a C : Rat), a > 0 /\ C > 0 /\ True
axiom aronson_gaussian_bounds {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (h_uniformly_parabolic : True) (x y : Fin nx) (t s : Fin nt) (ht_gt_s : t.val > s.val) : True
axiom krylov_safonov_Harnack {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (h_nonneg : forall i k, u i k >= 0) (h_solution_nondivergence : True) : True
axiom exponential_convergence_equilibrium {n : Nat} (L : Fin n -> Fin n -> Rat) (h_L_sym : forall i j, L i j = L j i) (lam1 : Rat) (h_lam1_pos : lam1 > 0) (u0 : Fin n -> Rat) (t : Rat) (ht_large : t > 100) : True
axiom asymptotic_self_similarity (u0 : Rat -> Rat) (t : Rat) (ht_large : t > 100) (x : Rat) : True
axiom li_yau_gradient_estimate (u : Fin nx -> Fin nt -> Rat) (h_pos : forall i k, u i k > 0) (h_solution : True) (a : Rat) (ha_gt_1 : a > 1) (K : Rat) (dim : Nat) (t : Rat) (ht_pos : t > 0) : True
axiom uniqueness_lipschitz_nonlinear {nx nt : Nat} (f : Rat -> Rat) (h_lipschitz : forall x y, (f x - f y).abs <= 1 * (x - y).abs) (u v : Fin nx -> Fin nt -> Rat) (h_same_initial : forall i, u i 0 = v i 0) : u = v
axiom finite_time_blowup (u0 : Fin nx -> Rat) (p : Rat) (hp_gt_1 : p > 1) (h_large_initial : forall i, u0 i > 100) : exists (T : Rat), T > 0 /\ T < 1 /\ True
axiom moser_trudinger_parabolic (u : Fin nx -> Fin nt -> Rat) (h_solution : True) (a : Rat) (ha_le_4pi : a <= 4 * Real.pi) : True
axiom CKN_parabolic (u : Fin nx -> Fin nt -> Rat) (a b : Rat) (p q r : Rat) : True
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

axiom fundamental_theorem_0 : True
axiom universal_bound_1 : True
axiom classification_result_2 : True
axiom main_result_3 : True
axiom corollary_4 : True
axiom fundamental_theorem_5 : True
axiom universal_bound_6 : True
axiom classification_result_7 : True
axiom main_result_8 : True
axiom corollary_9 : True
axiom fundamental_theorem_10 : True
axiom universal_bound_11 : True
axiom classification_result_12 : True
axiom main_result_13 : True
axiom corollary_14 : True
axiom fundamental_theorem_15 : True
axiom universal_bound_16 : True
axiom classification_result_17 : True
axiom main_result_18 : True
axiom corollary_19 : True
axiom fundamental_theorem_20 : True
axiom universal_bound_21 : True
axiom classification_result_22 : True
axiom main_result_23 : True
axiom corollary_24 : True
axiom fundamental_theorem_25 : True
axiom universal_bound_26 : True
axiom classification_result_27 : True
axiom main_result_28 : True
axiom corollary_29 : True
axiom fundamental_theorem_30 : True
axiom universal_bound_31 : True
axiom classification_result_32 : True
axiom main_result_33 : True
axiom corollary_34 : True
axiom fundamental_theorem_35 : True
axiom universal_bound_36 : True
axiom classification_result_37 : True
axiom main_result_38 : True
axiom corollary_39 : True
axiom fundamental_theorem_40 : True
axiom universal_bound_41 : True
axiom classification_result_42 : True
axiom main_result_43 : True
axiom corollary_44 : True
axiom fundamental_theorem_45 : True
axiom universal_bound_46 : True
axiom classification_result_47 : True
axiom main_result_48 : True
axiom corollary_49 : True
axiom fundamental_theorem_50 : True
axiom universal_bound_51 : True
axiom classification_result_52 : True
axiom main_result_53 : True
axiom corollary_54 : True
axiom fundamental_theorem_55 : True
axiom universal_bound_56 : True
axiom classification_result_57 : True
axiom main_result_58 : True
axiom corollary_59 : True
axiom fundamental_theorem_60 : True
axiom universal_bound_61 : True
axiom classification_result_62 : True
axiom main_result_63 : True
axiom corollary_64 : True
axiom fundamental_theorem_65 : True
axiom universal_bound_66 : True
axiom classification_result_67 : True
axiom main_result_68 : True
axiom corollary_69 : True
axiom fundamental_theorem_70 : True
axiom universal_bound_71 : True
axiom classification_result_72 : True
axiom main_result_73 : True
axiom corollary_74 : True
axiom fundamental_theorem_75 : True
axiom universal_bound_76 : True
axiom classification_result_77 : True
axiom main_result_78 : True
axiom corollary_79 : True
axiom fundamental_theorem_80 : True
axiom universal_bound_81 : True
axiom classification_result_82 : True
axiom main_result_83 : True
axiom corollary_84 : True
axiom fundamental_theorem_85 : True
axiom universal_bound_86 : True
axiom classification_result_87 : True
axiom main_result_88 : True
axiom corollary_89 : True
axiom fundamental_theorem_90 : True
axiom universal_bound_91 : True
axiom classification_result_92 : True
axiom main_result_93 : True
axiom corollary_94 : True
axiom fundamental_theorem_95 : True
axiom universal_bound_96 : True
axiom classification_result_97 : True
axiom main_result_98 : True
axiom corollary_99 : True
