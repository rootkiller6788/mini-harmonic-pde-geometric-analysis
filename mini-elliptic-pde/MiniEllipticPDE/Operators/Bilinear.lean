import MiniEllipticPDE.Core.Basic
import MiniEllipticPDE.Operators.Elliptic
open MiniEllipticPDE
namespace MiniEllipticPDE

/-
# Bilinear Forms for Elliptic Operators

Definition and properties of bilinear forms arising from
elliptic differential operators in weak formulation.
-/

def bilinearForm (A : Mat) (u v : Vec) : Float := Vec.dot u (Mat.apply A v)

def isSymmetricForm (A : Mat) : Prop := forall u v : Vec, bilinearForm A u v = bilinearForm A v u

def isCoercive (A : Mat) (alpha : Float) : Prop :=
  forall v : Vec, bilinearForm A v v >= alpha * Vec.normSq v

def isBounded (A : Mat) (M : Float) : Prop :=
  forall u v : Vec, (bilinearForm A u v).abs <= M * Vec.norm u * Vec.norm v

def energyNorm (A : Mat) (v : Vec) : Float := (bilinearForm A v v).abs

def laplacianBilinearForm (n : Nat) (u v : Vec) : Float :=
  let grad_u := finiteDiff1D u 1.0
  let grad_v := finiteDiff1D v 1.0
  Vec.dot grad_u grad_v

def helmholtzBilinearForm (n : Nat) (k : Float) (u v : Vec) : Float :=
  let grad_u := finiteDiff1D u 1.0
  let grad_v := finiteDiff1D v 1.0
  Vec.dot grad_u grad_v - k*k * Vec.dot u v

#eval "Operators.Bilinear: bilinear forms, coercivity, boundedness"

end MiniEllipticPDE
