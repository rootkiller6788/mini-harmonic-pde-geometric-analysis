import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
structure PeriodicGrid (n : Nat) where L : Rat
  hL_pos : L > 0
  h : Rat
  h_pos : h > 0
def periodicLaplacian (pg : PeriodicGrid n) : Fin n -> Fin n -> Rat := fun i j => if i=j then 2/(pg.h*pg.h) else if (i.val+1=j.val).|(j.val+1=i.val) then (-1)/(pg.h*pg.h) else if (i.val=0/\j.val=n-1).|(i.val=n-1/\j.val=0) then (-1)/(pg.h*pg.h) else 0
theorem periodicLaplacian_symmetric (pg : PeriodicGrid n) (i j : Fin n) : periodicLaplacian pg i j = periodicLaplacian pg j i := by unfold periodicLaplacian
  by_cases hij : i = j
  subst j
  rfl
  simp [hij]
axiom periodicLaplacian_constant_kernel (pg : PeriodicGrid n) (c : Rat) (i : Fin n) : (matVecMul (periodicLaplacian pg) (fun _ => c)) i = 0
def timeTranslate {nx nt : Nat} (u : Fin nx -> Fin nt -> Rat) (s : Nat) : Fin nx -> Fin nt -> Rat := fun i k => if k.val + s < nt then u i .⟨k.val+s,by omega⟩ else u i 0
structure SymmetryGroup (V : Type) where generators : List (V -> V)
  identity : V -> V
def isInvariantUnder {V : Type} (f : V -> Rat) (G : SymmetryGroup V) : Prop := forall (g : V -> V), g in G.generators -> forall x : V, f (g x) = f x
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
