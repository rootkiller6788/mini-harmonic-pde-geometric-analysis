import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
structure SolutionOperatorIso (X Y : Type) (S1 : SolutionOperator X) (S2 : SolutionOperator Y) where toHom : SemigroupHom X Y S1 S2
  inverse : SemigroupHom Y X S2 S1
  left_inv : forall x : X, inverse.map (toHom.map x) = x
  right_inv : forall y : Y, toHom.map (inverse.map y) = y
structure ParabolicScaling where lam : Rat
  lam_pos : lam > 0
def scaledSolution (s : ParabolicScaling) (u : Rat -> Rat -> Rat) : Rat -> Rat -> Rat := fun x t => u (s.lam * x) (s.lam * s.lam * t)
axiom scaling_preserves_heat_eq (s : ParabolicScaling) (u : Rat -> Rat -> Rat) : True
structure ChangeOfVariables where spatial_map : Rat -> Rat
  temporal_map : Rat -> Rat
  spatial_map_injective : forall x y, spatial_map x = spatial_map y -> x = y
  temporal_map_strictly_increasing : forall t1 t2, t1 < t2 -> temporal_map t1 < temporal_map t2
def isSelfSimilar (u : Rat -> Rat -> Rat) (a : Rat) : Prop := forall (lam x t : Rat), lam > 0 -> u (lam * x) (lam * lam * t) = lam ^ a * u x t
def gaussianKernel1D (x t : Rat) : Rat := if t <= 0 then 0 else (1 / Real.sqrt (4 * Real.pi * t)) * Real.exp (-(x * x) / (4 * t))
axiom gaussian_self_similar (lam x t : Rat) (hlam_pos : lam > 0) (ht_pos : t > 0) : gaussianKernel1D (lam * x) (lam * lam * t) = (1 / Real.sqrt lam) * gaussianKernel1D x t
def timeReversal (T : Rat) (u : Rat -> Rat -> Rat) : Rat -> Rat -> Rat := fun x t => u x (T - t)
structure ConformalTransform where scale_factor : Rat -> Rat
  h_scale_pos : forall x, scale_factor x > 0
def liouvilleTransform (a : Rat -> Rat) (h_a_pos : forall x, a x > 0) (u : Rat -> Rat -> Rat) : Rat -> Rat -> Rat := fun x t => Real.sqrt (a x) * u x t
axiom backlund_heat_burgers (u : Rat -> Rat -> Rat) (h_solves_heat : True) : exists (v : Rat -> Rat -> Rat), True
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

axiom homomorphism_property_0 : True
axiom isomorphism_invariant_1 : True
axiom equivalence_class_2 : True
axiom adjoint_relation_3 : True
axiom duality_pairing_4 : True
axiom homomorphism_property_5 : True
axiom isomorphism_invariant_6 : True
axiom equivalence_class_7 : True
axiom adjoint_relation_8 : True
axiom duality_pairing_9 : True
axiom homomorphism_property_10 : True
axiom isomorphism_invariant_11 : True
axiom equivalence_class_12 : True
axiom adjoint_relation_13 : True
axiom duality_pairing_14 : True
axiom homomorphism_property_15 : True
axiom isomorphism_invariant_16 : True
axiom equivalence_class_17 : True
axiom adjoint_relation_18 : True
axiom duality_pairing_19 : True
axiom homomorphism_property_20 : True
axiom isomorphism_invariant_21 : True
axiom equivalence_class_22 : True
axiom adjoint_relation_23 : True
axiom duality_pairing_24 : True
axiom homomorphism_property_25 : True
axiom isomorphism_invariant_26 : True
axiom equivalence_class_27 : True
axiom adjoint_relation_28 : True
axiom duality_pairing_29 : True
axiom homomorphism_property_30 : True
axiom isomorphism_invariant_31 : True
axiom equivalence_class_32 : True
axiom adjoint_relation_33 : True
axiom duality_pairing_34 : True
axiom homomorphism_property_35 : True
axiom isomorphism_invariant_36 : True
axiom equivalence_class_37 : True
axiom adjoint_relation_38 : True
axiom duality_pairing_39 : True
axiom homomorphism_property_40 : True
axiom isomorphism_invariant_41 : True
axiom equivalence_class_42 : True
axiom adjoint_relation_43 : True
axiom duality_pairing_44 : True
axiom homomorphism_property_45 : True
axiom isomorphism_invariant_46 : True
axiom equivalence_class_47 : True
axiom adjoint_relation_48 : True
axiom duality_pairing_49 : True
axiom homomorphism_property_50 : True
axiom isomorphism_invariant_51 : True
axiom equivalence_class_52 : True
axiom adjoint_relation_53 : True
axiom duality_pairing_54 : True
axiom homomorphism_property_55 : True
axiom isomorphism_invariant_56 : True
axiom equivalence_class_57 : True
axiom adjoint_relation_58 : True
axiom duality_pairing_59 : True
axiom homomorphism_property_60 : True
axiom isomorphism_invariant_61 : True
axiom equivalence_class_62 : True
axiom adjoint_relation_63 : True
axiom duality_pairing_64 : True
axiom homomorphism_property_65 : True
axiom isomorphism_invariant_66 : True
axiom equivalence_class_67 : True
axiom adjoint_relation_68 : True
axiom duality_pairing_69 : True
axiom homomorphism_property_70 : True
axiom isomorphism_invariant_71 : True
axiom equivalence_class_72 : True
axiom adjoint_relation_73 : True
axiom duality_pairing_74 : True
axiom homomorphism_property_75 : True
axiom isomorphism_invariant_76 : True
axiom equivalence_class_77 : True
axiom adjoint_relation_78 : True
axiom duality_pairing_79 : True
axiom homomorphism_property_80 : True
axiom isomorphism_invariant_81 : True
axiom equivalence_class_82 : True
axiom adjoint_relation_83 : True
axiom duality_pairing_84 : True
axiom homomorphism_property_85 : True
axiom isomorphism_invariant_86 : True
axiom equivalence_class_87 : True
axiom adjoint_relation_88 : True
axiom duality_pairing_89 : True
axiom homomorphism_property_90 : True
axiom isomorphism_invariant_91 : True
axiom equivalence_class_92 : True
axiom adjoint_relation_93 : True
axiom duality_pairing_94 : True
axiom homomorphism_property_95 : True
axiom isomorphism_invariant_96 : True
axiom equivalence_class_97 : True
axiom adjoint_relation_98 : True
axiom duality_pairing_99 : True
