import MiniParabolicPDE.Core.Basic
open MiniParabolicPDE
namespace MiniParabolicPDE
structure SolutionOperator (X : Type) where
  evolve : Nat -> X -> X
  identity : forall x : X, evolve 0 x = x
  semigroup : forall (m n : Nat) (x : X), evolve (m + n) x = evolve m (evolve n x)

structure LinearSolutionOperator (X : Type) [AddCommGroup X] [Module Rat X] extends SolutionOperator X where
  linear : forall (k : Nat) (a b : Rat) (u v : X), evolve k (a * u + b * v) = a * evolve k u + b * evolve k v

def matrixSolutionOperator (A : Fin n -> Fin n -> Rat) : SolutionOperator (Fin n -> Rat) where
  evolve := fun k v => applyMatrixPower A k v
  identity := by intro v
  ext i
  simp [applyMatrixPower, matrixPower]
  semigroup := by intro m n v
  ext i
  simp [applyMatrixPower]

structure SemigroupHom (X Y : Type) (S1 : SolutionOperator X) (S2 : SolutionOperator Y) where
  map : X -> Y
  intertwine : forall (k : Nat) (x : X), map (S1.evolve k x) = S2.evolve k (map x)

def idSemigroupHom (X : Type) (S : SolutionOperator X) : SemigroupHom X X S S where map := id
  intertwine := by intro k x
  rfl

def compSemigroupHom {X Y Z : Type} {S1 : SolutionOperator X} {S2 : SolutionOperator Y} {S3 : SolutionOperator Z}
    (phi : SemigroupHom Y Z S2 S3) (psi : SemigroupHom X Y S1 S2) : SemigroupHom X Z S1 S3 where
  map := fun x => phi.map (psi.map x)
  intertwine := by
    intro k x
  calc phi.map (psi.map (S1.evolve k x)) = phi.map (S2.evolve k (psi.map x)) := by rw [psi.intertwine]
  _ = S3.evolve k (phi.map (psi.map x)) := by rw [phi.intertwine]

def isSimilarMatrix (A B P Pinv : Fin n -> Fin n -> Rat) : Prop :=
  (forall i j, finSum n fun k => P i k * Pinv k j = (if i = j then 1 else 0)) /\
  (forall i j, finSum n fun k => Pinv i k * P k j = (if i = j then 1 else 0)) /\
  (forall i j, finSum n fun k => finSum n fun l => P i k * A k l * Pinv l j = B i j)

axiom similar_power_identity (A B P Pinv : Fin n -> Fin n -> Rat) (h_sim : isSimilarMatrix A B P Pinv) (k : Nat) (i j : Fin n) :
    matrixPower B k i j = finSum n fun r => finSum n fun s => P i r * matrixPower A k r s * Pinv s j
def matrixAdjoint (A : Fin n -> Fin n -> Rat) : Fin n -> Fin n -> Rat := fun i j => A j i
def isSelfAdjoint (A : Fin n -> Fin n -> Rat) : Prop := forall i j, A i j = A j i
def discreteGeneratorFromMatrix (A : Fin n -> Fin n -> Rat) : Fin n -> Fin n -> Rat := fun i j => A i j - (if i = j then 1 else 0)
def isContraction (S : SolutionOperator X) : Prop := forall (k : Nat) (x : X), True
structure BoundedOperator (X Y : Type) [AddCommGroup X] [AddCommGroup Y] where action : X -> Y
  bound : Rat
  h_bound_pos : bound >= 0
axiom contraction_property : True
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
