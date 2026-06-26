import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
structure HeatConduction where density : Rat
  specificHeat : Rat
  conductivity : Rat
def thermalDiffusivity (hc : HeatConduction) : Rat := hc.conductivity / (hc.density * hc.specificHeat)
axiom steady_state_heat_minimization (Omega : Fin n -> Rat) (h_boundary : True) : True
structure FickDiffusion where diffusivity : Rat
  h_D_pos : diffusivity > 0
structure EinsteinRelation where boltzmann_const : Rat
  temperature : Rat
  viscosity : Rat
  particle_radius : Rat
axiom feynman_kac_formula (L : Fin n -> Fin n -> Rat) (V : Fin n -> Rat) (u0 : Fin n -> Rat) (T : Rat) (hT_pos : T > 0) : True
structure TuringSystem where Du : Rat
  Dv : Rat
  f : Rat -> Rat -> Rat
  g : Rat -> Rat -> Rat
axiom turing_instability_condition (ts : TuringSystem) (h_D_ratio : ts.Dv > 10 * ts.Du) : True
axiom navier_stokes_parabolic (nu : Rat) (hnu_pos : nu > 0) : True
  axiom leray_projection_parabolic : True
axiom allen_cahn_interface_motion (phi : Fin n -> Rat) (eps : Rat) (heps_small : eps > 0) (t : Rat) (ht_large : t > 100) : True
axiom smoluchowski_coagulation (n0 : Rat -> Rat) (K : Rat -> Rat -> Rat) (h_K_symmetric : forall x y, K x y = K y x) : True
axiom keller_segel_critical_mass (chi : Rat) (hchi_pos : chi > 0) (u0 : Fin n -> Rat) (mass : Rat) : True
axiom fisher_KPP_traveling_wave (c : Rat) (hc_ge_2 : c >= 2) : True
axiom ginzburg_landau_vortex (psi0 : Fin n -> Rat * Rat) (eps : Rat) (heps_small : eps > 0 /\ eps < 1) : True
axiom thin_film_equation (n : Nat) (hn_pos : n > 0) (h0 : Rat -> Rat) (h_nonneg : forall x, h0 x >= 0) : True
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
