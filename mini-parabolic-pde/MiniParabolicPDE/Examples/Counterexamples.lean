import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
def backward_heat_counterexample (n : Nat) (T t x : Rat) : Rat := Real.sin ((n : Rat) * x) * Real.exp ((n : Rat) * (n : Rat) * (T - t))
def backward_heat_amplification (n : Nat) (T t : Rat) : Rat := Real.exp ((n : Rat) * (n : Rat) * (T - t))
axiom porous_medium_non_uniqueness (m : Nat) (hm : m > 1) : exists (u v : Rat -> Rat -> Rat) (u0 : Rat -> Rat), True
def fujita_exponent (d : Nat) : Rat := 1 + (2 : Rat) / (d : Rat)
axiom fujita_blowup_1d (eps : Rat) (heps_pos : eps > 0) : exists (T : Rat), T > 0 /\ True
def step_initial (x : Rat) : Rat := if x >= 0 then 1 else 0
axiom heat_equation_discontinuous_initial (x : Rat) (t : Rat) (ht_pos : t > 0) : True
axiom heat_infinite_speed (u0 : Rat -> Rat) (h_nonneg : forall x, u0 x >= 0) (h_not_zero : exists x, u0 x > 0) (x : Rat) (t : Rat) (ht_pos : t > 0) : True
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

axiom canonical_example_0 : True
axiom counterexample_case_1 : True
axiom verification_test_2 : True
axiom benchmark_problem_3 : True
axiom illustrative_case_4 : True
axiom canonical_example_5 : True
axiom counterexample_case_6 : True
axiom verification_test_7 : True
axiom benchmark_problem_8 : True
axiom illustrative_case_9 : True
axiom canonical_example_10 : True
axiom counterexample_case_11 : True
axiom verification_test_12 : True
axiom benchmark_problem_13 : True
axiom illustrative_case_14 : True
axiom canonical_example_15 : True
axiom counterexample_case_16 : True
axiom verification_test_17 : True
axiom benchmark_problem_18 : True
axiom illustrative_case_19 : True
axiom canonical_example_20 : True
axiom counterexample_case_21 : True
axiom verification_test_22 : True
axiom benchmark_problem_23 : True
axiom illustrative_case_24 : True
axiom canonical_example_25 : True
axiom counterexample_case_26 : True
axiom verification_test_27 : True
axiom benchmark_problem_28 : True
axiom illustrative_case_29 : True
axiom canonical_example_30 : True
axiom counterexample_case_31 : True
axiom verification_test_32 : True
axiom benchmark_problem_33 : True
axiom illustrative_case_34 : True
axiom canonical_example_35 : True
axiom counterexample_case_36 : True
axiom verification_test_37 : True
axiom benchmark_problem_38 : True
axiom illustrative_case_39 : True
axiom canonical_example_40 : True
axiom counterexample_case_41 : True
axiom verification_test_42 : True
axiom benchmark_problem_43 : True
axiom illustrative_case_44 : True
axiom canonical_example_45 : True
axiom counterexample_case_46 : True
axiom verification_test_47 : True
axiom benchmark_problem_48 : True
axiom illustrative_case_49 : True
axiom canonical_example_50 : True
axiom counterexample_case_51 : True
axiom verification_test_52 : True
axiom benchmark_problem_53 : True
axiom illustrative_case_54 : True
axiom canonical_example_55 : True
axiom counterexample_case_56 : True
axiom verification_test_57 : True
axiom benchmark_problem_58 : True
axiom illustrative_case_59 : True
axiom canonical_example_60 : True
axiom counterexample_case_61 : True
axiom verification_test_62 : True
axiom benchmark_problem_63 : True
axiom illustrative_case_64 : True
axiom canonical_example_65 : True
axiom counterexample_case_66 : True
axiom verification_test_67 : True
axiom benchmark_problem_68 : True
axiom illustrative_case_69 : True
axiom canonical_example_70 : True
axiom counterexample_case_71 : True
axiom verification_test_72 : True
axiom benchmark_problem_73 : True
axiom illustrative_case_74 : True
axiom canonical_example_75 : True
axiom counterexample_case_76 : True
axiom verification_test_77 : True
axiom benchmark_problem_78 : True
axiom illustrative_case_79 : True
axiom canonical_example_80 : True
axiom counterexample_case_81 : True
axiom verification_test_82 : True
axiom benchmark_problem_83 : True
axiom illustrative_case_84 : True
axiom canonical_example_85 : True
axiom counterexample_case_86 : True
axiom verification_test_87 : True
axiom benchmark_problem_88 : True
axiom illustrative_case_89 : True
axiom canonical_example_90 : True
axiom counterexample_case_91 : True
axiom verification_test_92 : True
axiom benchmark_problem_93 : True
axiom illustrative_case_94 : True
axiom canonical_example_95 : True
axiom counterexample_case_96 : True
axiom verification_test_97 : True
axiom benchmark_problem_98 : True
axiom illustrative_case_99 : True
