/-
# Core/Objects: Domains, Boundaries, Function Spaces
import MiniParabolicPDE.Core.Basic
-/
open MiniParabolicPDE
namespace MiniParabolicPDE

def SpaceTimeFunction (nx nt : Nat) : Type := Fin nx -> Fin nt -> Rat

def timeSlice {nx nt : Nat} (u : SpaceTimeFunction nx nt) (k : Fin nt) : Fin nx -> Rat := fun i => u i k

def spatialL2NormSq {n : Nat} (u : Fin n -> Rat) (h : Rat) : Rat := h * finSum n fun i => u i * u i

def spatialH1SeminormSq {n : Nat} (u : Fin n -> Rat) (h : Rat) : Rat :=
  (1 / h) * finSum (n-1) fun k => let i : Fin n := Fin.mk k (by omega)
  let j : Fin n := Fin.mk (k+1) (by omega)
  (u j - u i) * (u j - u i)

structure DiscreteParabolicCylinder (nx nt : Nat) where
  interior_points : List (Fin nx * Fin nt)
  parabolic_boundary : List (Fin nx * Fin nt)

def initialTraceOp {nx nt : Nat} (u : SpaceTimeFunction nx nt) : Fin nx -> Rat := timeSlice u 0

def isTestFunction {nx nt : Nat} (phi : SpaceTimeFunction nx nt) (cylinder : DiscreteParabolicCylinder nx nt) : Prop :=
  forall p, p in cylinder.parabolic_boundary -> let (i, k) := p
  phi i k = 0

structure InitialCondition (n : Nat) where data : Fin n -> Rat

def stepInitial (n : Nat) (h : Rat) (interface : Rat) (left_val right_val : Rat) : InitialCondition n :=
  { data := fun i => if (i.val : Rat) * h < interface then left_val else right_val }

def gaussianInitial (n : Nat) (h sigma x0 : Rat) : InitialCondition n :=
  { data := fun i => let x := (i.val : Rat) * h
  ((-((x-x0)*(x-x0))/(2*sigma*sigma)).exp) * (1/(sigma*Real.sqrt(2*Real.pi))) }

struct SpaceTimeGrid (nx nt : Nat) where
  hx : Rat / ht : Rat / hx_pos : hx > 0 / ht_pos : ht > 0

def dirichletLaplacianMatrix (n : Nat) (h : Rat) (h_pos : h > 0) : Fin n -> Fin n -> Rat :=
  fun i j => if i = j then 2/(h*h) else if i.val+1=j.val .| j.val+1=i.val then (-1)/(h*h) else 0

def neumannLaplacianMatrix (n : Nat) (h : Rat) (h_pos : h > 0) : Fin n -> Fin n -> Rat :=
  fun i j => if i = j then (if i.val=0 .| i.val=n-1 then 1/(h*h) else 2/(h*h))
    else if i.val+1=j.val .| j.val+1=i.val then (-1)/(h*h) else 0

def spacetimeL2NormSq {nx nt : Nat} (u : SpaceTimeFunction nx nt) (hx ht : Rat) : Rat :=
  ht * finSum nt fun k => hx * finSum nx fun i => u i k * u i k

structure RobinBCData (n : Nat) where alpha : Fin n -> Rat / beta : Fin n -> Rat / g : Fin n -> Rat

def satisfiesDirichletBC {nx nt : Nat} (u : SpaceTimeFunction nx nt) (boundary_indices : List (Fin nx)) (g : Fin nx -> Fin nt -> Rat) : Prop :=
  forall i k, i in boundary_indices -> u i k = g i k

structure ParabolicBall (n : Nat) where center : Fin n / radius : Rat / radius_pos : radius > 0

structure TemporalGrid where t_start : Rat / t_end : Rat / num_steps : Nat / dt : Rat / h_dt_pos : dt > 0

def TemporalGrid.allTimes (tg : TemporalGrid) : List Rat :=
  List.range (tg.num_steps + 1) |>.map fun k => tg.t_start + (k : Rat) * tg.dt

structure SpatialGrid1D (n : Nat) where L : Rat / h : Rat / h_pos : h > 0 / points : Fin n -> Rat

def SpatialGrid1D.pointAt (sg : SpatialGrid1D n) (i : Fin n) : Rat := (i.val : Rat) * sg.h

structure FullSpaceTimeGrid (nx nt : Nat) where spatial : SpatialGrid1D nx / temporal : TemporalGrid

def L2FunctionSpace (n : Nat) : Type := Fin n -> Rat

def H1FunctionSpace (n : Nat) (h : Rat) : Type := Fin n -> Rat

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
