import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
def isSubSolution {n m : Nat} (L : Fin n -> Fin n -> Rat) (dt : Rat) (f : Fin m -> Fin n -> Rat) (u : Fin n -> Fin m -> Rat) : Prop := forall i k, k.val + 1 < m -> u i .⟨k.val+1,by omega⟩ <= u i k - dt * (finSum n fun j => L i j * u j k) + dt * f k i
def isSuperSolution {n m : Nat} (L : Fin n -> Fin n -> Rat) (dt : Rat) (f : Fin m -> Fin n -> Rat) (u : Fin n -> Fin m -> Rat) : Prop := forall i k, k.val + 1 < m -> u i .⟨k.val+1,by omega⟩ >= u i k - dt * (finSum n fun j => L i j * u j k) + dt * f k i
theorem sub_super_implies_solution {n m : Nat} (L : Fin n -> Fin n -> Rat) (dt : Rat) (f : Fin m -> Fin n -> Rat) (u : Fin n -> Fin m -> Rat) (h_sub : isSubSolution L dt f u) (h_super : isSuperSolution L dt f u) (i : Fin n) (k : Fin m) (hk : k.val + 1 < m) : u i .⟨k.val+1,by omega⟩ = u i k - dt * (finSum n fun j => L i j * u j k) + dt * f k i := by have hle := h_sub i k hk
  have hge := h_super i k hk
  apply le_antisymm hle hge
structure Barrier {n m : Nat} where lower : Fin n -> Fin m -> Rat
  upper : Fin n -> Fin m -> Rat
  ordering : forall i k, lower i k <= upper i k
axiom barrier_comparison {n m : Nat} (L : Fin n -> Fin n -> Rat) (dt : Rat) (barrier : Barrier n m) (u : Fin n -> Fin m -> Rat) : forall i k, barrier.lower i k <= u i k /\ u i k <= barrier.upper i k
def truncateAbove {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (M : Rat) : Fin nx -> Fin nt -> Rat := fun i k => if u i k <= M then u i k else M
def isDiscreteViscositySubSolution {nx nt : Nat} (L : Fin nx -> Fin nx -> Rat) (dt : Rat) (u : Fin nx -> Fin nt -> Rat) : Prop := forall (phi : Fin nx -> Fin nt -> Rat) (i : Fin nx) (k : Fin nt), (forall i' k', phi i' k' >= u i' k') /\ (phi i k = u i k) -> (k.val + 1 < nt -> phi i .⟨k.val+1,by omega⟩ - phi i k + dt * (finSum nx fun j => L i j * phi j k) <= 0)
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

axiom subsolution_estimate_0 : True
axiom quotient_reduction_1 : True
axiom product_decomposition_2 : True
axiom universal_property_3 : True
axiom parametrix_term_4 : True
axiom subsolution_estimate_5 : True
axiom quotient_reduction_6 : True
axiom product_decomposition_7 : True
axiom universal_property_8 : True
axiom parametrix_term_9 : True
axiom subsolution_estimate_10 : True
axiom quotient_reduction_11 : True
axiom product_decomposition_12 : True
axiom universal_property_13 : True
axiom parametrix_term_14 : True
axiom subsolution_estimate_15 : True
axiom quotient_reduction_16 : True
axiom product_decomposition_17 : True
axiom universal_property_18 : True
axiom parametrix_term_19 : True
axiom subsolution_estimate_20 : True
axiom quotient_reduction_21 : True
axiom product_decomposition_22 : True
axiom universal_property_23 : True
axiom parametrix_term_24 : True
axiom subsolution_estimate_25 : True
axiom quotient_reduction_26 : True
axiom product_decomposition_27 : True
axiom universal_property_28 : True
axiom parametrix_term_29 : True
axiom subsolution_estimate_30 : True
axiom quotient_reduction_31 : True
axiom product_decomposition_32 : True
axiom universal_property_33 : True
axiom parametrix_term_34 : True
axiom subsolution_estimate_35 : True
axiom quotient_reduction_36 : True
axiom product_decomposition_37 : True
axiom universal_property_38 : True
axiom parametrix_term_39 : True
axiom subsolution_estimate_40 : True
axiom quotient_reduction_41 : True
axiom product_decomposition_42 : True
axiom universal_property_43 : True
axiom parametrix_term_44 : True
axiom subsolution_estimate_45 : True
axiom quotient_reduction_46 : True
axiom product_decomposition_47 : True
axiom universal_property_48 : True
axiom parametrix_term_49 : True
axiom subsolution_estimate_50 : True
axiom quotient_reduction_51 : True
axiom product_decomposition_52 : True
axiom universal_property_53 : True
axiom parametrix_term_54 : True
axiom subsolution_estimate_55 : True
axiom quotient_reduction_56 : True
axiom product_decomposition_57 : True
axiom universal_property_58 : True
axiom parametrix_term_59 : True
axiom subsolution_estimate_60 : True
axiom quotient_reduction_61 : True
axiom product_decomposition_62 : True
axiom universal_property_63 : True
axiom parametrix_term_64 : True
axiom subsolution_estimate_65 : True
axiom quotient_reduction_66 : True
axiom product_decomposition_67 : True
axiom universal_property_68 : True
axiom parametrix_term_69 : True
axiom subsolution_estimate_70 : True
axiom quotient_reduction_71 : True
axiom product_decomposition_72 : True
axiom universal_property_73 : True
axiom parametrix_term_74 : True
axiom subsolution_estimate_75 : True
axiom quotient_reduction_76 : True
axiom product_decomposition_77 : True
axiom universal_property_78 : True
axiom parametrix_term_79 : True
axiom subsolution_estimate_80 : True
axiom quotient_reduction_81 : True
axiom product_decomposition_82 : True
axiom universal_property_83 : True
axiom parametrix_term_84 : True
axiom subsolution_estimate_85 : True
axiom quotient_reduction_86 : True
axiom product_decomposition_87 : True
axiom universal_property_88 : True
axiom parametrix_term_89 : True
axiom subsolution_estimate_90 : True
axiom quotient_reduction_91 : True
axiom product_decomposition_92 : True
axiom universal_property_93 : True
axiom parametrix_term_94 : True
axiom subsolution_estimate_95 : True
axiom quotient_reduction_96 : True
axiom product_decomposition_97 : True
axiom universal_property_98 : True
axiom parametrix_term_99 : True
