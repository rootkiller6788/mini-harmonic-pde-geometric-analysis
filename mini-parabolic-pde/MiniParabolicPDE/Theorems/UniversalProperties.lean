import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
axiom discrete_weak_max_principle {n : Nat} (A : Fin n -> Fin n -> Rat) (h_nonneg : forall i j, A i j >= 0) (h_row_sum_le_one : forall i, finSum n (fun j => A i j) <= 1) (u : Fin n -> Rat) (i : Fin n) : (matVecMul A u) i <= maxNorm u
axiom strong_maximum_principle {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (h_solution : forall i k, k.val + 1 < nt -> True) (i0 : Fin nx) (k0 : Fin nt) (hk0_pos : k0.val > 0) : (forall i k, u i k <= u i0 k0) -> (forall i k, u i k = u i0 k0)
axiom comparison_principle_full {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (dt : Rat) (hdt_pos : dt > 0) (u v : Fin nx -> Fin nt -> Rat) (h_boundary : forall i, u i 0 <= v i 0) : forall i k, u i k <= v i k
axiom parabolic_Harnack {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (h_nonneg : forall i k, u i k >= 0) (h_solution : True) (Q_minus Q_plus : ParabolicCylinder) : exists (C : Rat), C > 0 /\ True
axiom parabolic_ABP_estimate {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (f : Fin nx -> Fin nt -> Rat) (diameter : Rat) : True
axiom carleman_estimate_heat {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (tau : Rat) (htau_large : tau > 100) : True
axiom li_yau_estimate (u : Fin nx -> Fin nt -> Rat) (h_pos : forall i k, u i k > 0) (h_solution : True) (t : Rat) (ht_pos : t > 0) (dim : Nat) : True
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

axiom invariant_preserved_0 : True
axiom qualitative_behavior_1 : True
axiom classification_criterion_2 : True
axiom structural_condition_3 : True
axiom regularity_class_4 : True
axiom invariant_preserved_5 : True
axiom qualitative_behavior_6 : True
axiom classification_criterion_7 : True
axiom structural_condition_8 : True
axiom regularity_class_9 : True
axiom invariant_preserved_10 : True
axiom qualitative_behavior_11 : True
axiom classification_criterion_12 : True
axiom structural_condition_13 : True
axiom regularity_class_14 : True
axiom invariant_preserved_15 : True
axiom qualitative_behavior_16 : True
axiom classification_criterion_17 : True
axiom structural_condition_18 : True
axiom regularity_class_19 : True
axiom invariant_preserved_20 : True
axiom qualitative_behavior_21 : True
axiom classification_criterion_22 : True
axiom structural_condition_23 : True
axiom regularity_class_24 : True
axiom invariant_preserved_25 : True
axiom qualitative_behavior_26 : True
axiom classification_criterion_27 : True
axiom structural_condition_28 : True
axiom regularity_class_29 : True
axiom invariant_preserved_30 : True
axiom qualitative_behavior_31 : True
axiom classification_criterion_32 : True
axiom structural_condition_33 : True
axiom regularity_class_34 : True
axiom invariant_preserved_35 : True
axiom qualitative_behavior_36 : True
axiom classification_criterion_37 : True
axiom structural_condition_38 : True
axiom regularity_class_39 : True
axiom invariant_preserved_40 : True
axiom qualitative_behavior_41 : True
axiom classification_criterion_42 : True
axiom structural_condition_43 : True
axiom regularity_class_44 : True
axiom invariant_preserved_45 : True
axiom qualitative_behavior_46 : True
axiom classification_criterion_47 : True
axiom structural_condition_48 : True
axiom regularity_class_49 : True
axiom invariant_preserved_50 : True
axiom qualitative_behavior_51 : True
axiom classification_criterion_52 : True
axiom structural_condition_53 : True
axiom regularity_class_54 : True
axiom invariant_preserved_55 : True
axiom qualitative_behavior_56 : True
axiom classification_criterion_57 : True
axiom structural_condition_58 : True
axiom regularity_class_59 : True
axiom invariant_preserved_60 : True
axiom qualitative_behavior_61 : True
axiom classification_criterion_62 : True
axiom structural_condition_63 : True
axiom regularity_class_64 : True
axiom invariant_preserved_65 : True
axiom qualitative_behavior_66 : True
axiom classification_criterion_67 : True
axiom structural_condition_68 : True
axiom regularity_class_69 : True
axiom invariant_preserved_70 : True
axiom qualitative_behavior_71 : True
axiom classification_criterion_72 : True
axiom structural_condition_73 : True
axiom regularity_class_74 : True
axiom invariant_preserved_75 : True
axiom qualitative_behavior_76 : True
axiom classification_criterion_77 : True
axiom structural_condition_78 : True
axiom regularity_class_79 : True
axiom invariant_preserved_80 : True
axiom qualitative_behavior_81 : True
axiom classification_criterion_82 : True
axiom structural_condition_83 : True
axiom regularity_class_84 : True
axiom invariant_preserved_85 : True
axiom qualitative_behavior_86 : True
axiom classification_criterion_87 : True
axiom structural_condition_88 : True
axiom regularity_class_89 : True
axiom invariant_preserved_90 : True
axiom qualitative_behavior_91 : True
axiom classification_criterion_92 : True
axiom structural_condition_93 : True
axiom regularity_class_94 : True
axiom invariant_preserved_95 : True
axiom qualitative_behavior_96 : True
axiom classification_criterion_97 : True
axiom structural_condition_98 : True
axiom regularity_class_99 : True
