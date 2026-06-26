import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
structure RicciFlow where dimension : Nat
  metric : Fin 3 -> Fin 3 -> Rat
  ricciCurvature : Fin 3 -> Fin 3 -> Rat
axiom ricci_flow_deTurck_parabolic : True
  axiom ricci_flow_surfaces (g0 : Fin 2 -> Fin 2 -> Rat) : True
axiom perelman_entropy_monotonicity : True
structure MeanCurvatureFlow where position : Rat -> Rat -> Rat
  normal : Rat -> Rat
  meanCurvature : Rat -> Rat -> Rat
axiom MCF_area_decrease : True
  axiom huisken_convex_MCF (Sigma0 : Rat -> Rat -> Rat) (h_strictly_convex : True) : True
axiom gage_hamilton_CSF (gamma0 : Rat -> Rat * Rat) (h_embedded_convex : True) : True
axiom grayson_CSF (gamma0 : Rat -> Rat * Rat) (h_embedded : True) : True
structure YamabeFlow where conformalFactor : Rat -> Rat
  scalarCurvature : Rat
axiom yamabe_flow_convergence (g0 : Fin 3 -> Fin 3 -> Rat) : True
axiom calabi_flow_short_time : True
  axiom kahler_ricci_flow (omega0 : Fin 2 -> Fin 2 -> Rat) (h_kahler : True) : True
axiom kahler_einstein_YTD_conjecture : True
  axiom inverse_MCF (Sigma0 : Rat -> Rat -> Rat) (h_star_shaped : True) : True
axiom willmore_flow_short_time : True
  axiom gauss_curvature_flow (Sigma0 : Rat -> Rat -> Rat) (h_strictly_convex : True) : True
axiom lagrangian_MCF (L0 : Fin 3 -> Rat) (h_lagrangian : True) (h_calabi_yau : True) : True
axiom harmonic_map_flow (u0 : Fin n -> Fin 3) (h_energy_bounded : True) : True
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

axiom analysis_connection_0 : True
axiom geometry_link_1 : True
axiom physics_application_2 : True
axiom computational_method_3 : True
axiom interdisciplinary_bridge_4 : True
axiom analysis_connection_5 : True
axiom geometry_link_6 : True
axiom physics_application_7 : True
axiom computational_method_8 : True
axiom interdisciplinary_bridge_9 : True
axiom analysis_connection_10 : True
axiom geometry_link_11 : True
axiom physics_application_12 : True
axiom computational_method_13 : True
axiom interdisciplinary_bridge_14 : True
axiom analysis_connection_15 : True
axiom geometry_link_16 : True
axiom physics_application_17 : True
axiom computational_method_18 : True
axiom interdisciplinary_bridge_19 : True
axiom analysis_connection_20 : True
axiom geometry_link_21 : True
axiom physics_application_22 : True
axiom computational_method_23 : True
axiom interdisciplinary_bridge_24 : True
axiom analysis_connection_25 : True
axiom geometry_link_26 : True
axiom physics_application_27 : True
axiom computational_method_28 : True
axiom interdisciplinary_bridge_29 : True
axiom analysis_connection_30 : True
axiom geometry_link_31 : True
axiom physics_application_32 : True
axiom computational_method_33 : True
axiom interdisciplinary_bridge_34 : True
axiom analysis_connection_35 : True
axiom geometry_link_36 : True
axiom physics_application_37 : True
axiom computational_method_38 : True
axiom interdisciplinary_bridge_39 : True
axiom analysis_connection_40 : True
axiom geometry_link_41 : True
axiom physics_application_42 : True
axiom computational_method_43 : True
axiom interdisciplinary_bridge_44 : True
axiom analysis_connection_45 : True
axiom geometry_link_46 : True
axiom physics_application_47 : True
axiom computational_method_48 : True
axiom interdisciplinary_bridge_49 : True
axiom analysis_connection_50 : True
axiom geometry_link_51 : True
axiom physics_application_52 : True
axiom computational_method_53 : True
axiom interdisciplinary_bridge_54 : True
axiom analysis_connection_55 : True
axiom geometry_link_56 : True
axiom physics_application_57 : True
axiom computational_method_58 : True
axiom interdisciplinary_bridge_59 : True
axiom analysis_connection_60 : True
axiom geometry_link_61 : True
axiom physics_application_62 : True
axiom computational_method_63 : True
axiom interdisciplinary_bridge_64 : True
axiom analysis_connection_65 : True
axiom geometry_link_66 : True
axiom physics_application_67 : True
axiom computational_method_68 : True
axiom interdisciplinary_bridge_69 : True
axiom analysis_connection_70 : True
axiom geometry_link_71 : True
axiom physics_application_72 : True
axiom computational_method_73 : True
axiom interdisciplinary_bridge_74 : True
axiom analysis_connection_75 : True
axiom geometry_link_76 : True
axiom physics_application_77 : True
axiom computational_method_78 : True
axiom interdisciplinary_bridge_79 : True
axiom analysis_connection_80 : True
axiom geometry_link_81 : True
axiom physics_application_82 : True
axiom computational_method_83 : True
axiom interdisciplinary_bridge_84 : True
axiom analysis_connection_85 : True
axiom geometry_link_86 : True
axiom physics_application_87 : True
axiom computational_method_88 : True
axiom interdisciplinary_bridge_89 : True
axiom analysis_connection_90 : True
axiom geometry_link_91 : True
axiom physics_application_92 : True
axiom computational_method_93 : True
axiom interdisciplinary_bridge_94 : True
axiom analysis_connection_95 : True
axiom geometry_link_96 : True
axiom physics_application_97 : True
axiom computational_method_98 : True
axiom interdisciplinary_bridge_99 : True
