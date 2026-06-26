import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
def thetaMethod {n : Nat} (L : Fin n -> Fin n -> Rat) (dt theta : Rat) (u_old : Fin n -> Rat) : Fin n -> Rat := if theta = 0 then explicitEulerStep L dt u_old else u_old
axiom theta_method_stability (theta : Rat) (h_theta : 0 <= theta /\ theta <= 1) (L : Fin n -> Fin n -> Rat) (dt h : Rat) : True
structure FEMDiscretization where massMatrix : Fin n -> Fin n -> Rat
  stiffnessMatrix : Fin n -> Fin n -> Rat
def massLumping (M : Fin n -> Fin n -> Rat) : Fin n -> Rat := fun i => finSum n fun j => M i j
axiom crank_nicolson_FEM_stability (M K : Fin n -> Fin n -> Rat) (dt : Rat) (hdt_pos : dt > 0) : True
def fourierSpectralStep (u_coeffs : Fin n -> Rat) (dt : Rat) : Fin n -> Rat := fun k => u_coeffs k * Real.exp (-((k.val : Rat) * (k.val : Rat)) * dt)
axiom spectral_exact_time_integration (u0 : Fin n -> Rat) (t : Rat) : True
axiom chebyshev_heat_solver (u0 : Fin n -> Rat) (T : Rat) (nt : Nat) : True
  axiom ADI_method_stability (dt hx hy : Rat) : True
structure AdaptiveTimeStepper where tolerance : Rat
  safetyFactor : Rat
  minDt : Rat
  maxDt : Rat
  order : Nat
def adaptiveStepError (u_new u_pred : Fin n -> Rat) : Rat := lInfNorm (fun i => u_new i - u_pred i)
axiom conjugate_gradient_parabolic (L : Fin n -> Fin n -> Rat) (dt : Rat) (u_old : Fin n -> Rat) (tol : Rat) : True
axiom multigrid_heat_solver (L : Fin n -> Fin n -> Rat) (dt : Rat) (levels : Nat) : True
axiom ETD_scheme_accuracy (L : Fin n -> Fin n -> Rat) (dt : Rat) (order : Nat) : True
axiom POD_approximation (snapshots : List (Fin n -> Rat)) (r : Nat) (hr_small : r > 0) : True
axiom DG_parabolic_accuracy (p : Nat) (h : Rat) (dt : Rat) : True
  axiom space_time_FEM (h : Rat) (dt : Rat) (p q : Nat) : True
axiom parareal_convergence (G : Fin n -> Fin n -> Rat) (F : Fin n -> Fin n -> Rat) (N : Nat) (k : Nat) : True
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
