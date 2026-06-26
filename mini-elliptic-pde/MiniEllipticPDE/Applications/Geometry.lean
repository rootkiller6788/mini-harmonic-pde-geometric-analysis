import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE
def minimalSurfaceEquation (u : Vec) (h : Float) : Vec := finiteDiff2nd1D u h
def yamabeQuotient (u : Vec) (g : Mat) : Float :=
  let lap := Mat.apply g u
  let num := Vec.dot u lap + Vec.normSq u
  let den := Vec.normSq u
  if den == 0.0 then 0.0 else num / den
def harmonicMapEnergy (u : Vec) (g : Mat) : Float :=
  Vec.dot u (Mat.apply g u)
#eval "Applications.Geometry: geometric PDE applications"
end MiniEllipticPDE
