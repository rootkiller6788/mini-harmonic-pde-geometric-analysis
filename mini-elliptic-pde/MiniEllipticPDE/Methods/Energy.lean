import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def energyFunctional (A : Mat) (f u : Vec) : Float := (0.5 : Float) * Vec.dot u (Mat.apply A u) - Vec.dot f u
def energyNormSq (A : Mat) (u : Vec) : Float := Vec.dot u (Mat.apply A u)
def energyGradient (A : Mat) (f u : Vec) : Vec := Vec.sub (Mat.apply A u) f
#eval "Methods.Energy: energy methods"
end MiniEllipticPDE
