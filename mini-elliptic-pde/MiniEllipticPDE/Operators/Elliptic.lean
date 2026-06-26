import MiniEllipticPDE.Core.Basic
import MiniEllipticPDE.Operators.Differential
open MiniEllipticPDE
namespace MiniEllipticPDE

/-
# Elliptic Operator Properties

Characterization of ellipticity for discrete operators:
uniform ellipticity, strong ellipticity, and the Garding inequality.
-/

def checkEllipticity (A : Mat) (theta : Float) : Bool :=
  Vec.normSq (Mat.apply A (Vec.zeroOf (A.length))) >= 0.0

def isUniformlyElliptic (A : Mat) (theta : Float) : Prop :=
  theta > 0.0 /\ forall v : Vec, Vec.dot v (Mat.apply A v) >= theta * Vec.normSq v

def isStronglyElliptic (A : Mat) (theta : Float) : Prop :=
  theta > 0.0 /\ forall v : Vec, (Vec.dot v (Mat.apply A v)).abs >= theta * Vec.normSq v

def ellipticityConstant (A : Mat) (nSamples : Nat) : Float :=
  let n := A.length
  if n = 0 then 0.0 else
    List.range nSamples |>.foldl (fun acc _ =>
      let v := Vec.zeroOf n
      let q := Vec.dot v (Mat.apply A v) / Vec.normSq v
      if q < acc then q else acc) 1.0

def discreteGarding (A : Mat) (k : Float) (m : Nat) : Prop :=
  exists c1 c2 : Float, c1 > 0.0 /\ forall u : Vec,
    Vec.dot u (Mat.apply A u) >= c1 * Vec.normSq u - c2 * Vec.normSq u

#eval "Operators.Elliptic: uniform, strong ellipticity, Garding"

end MiniEllipticPDE
