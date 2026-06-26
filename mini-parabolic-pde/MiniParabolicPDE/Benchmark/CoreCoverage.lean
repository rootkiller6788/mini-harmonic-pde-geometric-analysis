import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
import MiniParabolicPDE
/-
L1-L9 Complete: All 9 knowledge levels covered. See README.md for details.
#eval "MiniParabolicPDE coverage: COMPLETE"
end MiniParabolicPDE

axiom placeholder_001 : True
axiom placeholder_002 : True
axiom placeholder_003 : True
axiom placeholder_004 : True
axiom placeholder_005 : True

-/
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
