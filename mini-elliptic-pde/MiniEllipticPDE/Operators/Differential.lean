import MiniEllipticPDE.Core.Basic
open MiniEllipticPDE
namespace MiniEllipticPDE

/-
# Differential Operators on Discrete Grids

This module defines discrete approximations of differential operators
commonly used in elliptic PDE theory: gradient, divergence, Laplacian,
biharmonic, and general second-order operators.
-/

def discreteGradient (u : Vec) (h : Float) : Vec := finiteDiff1D u h

def discreteDivergence (F : Vec) (h : Float) : Vec := finiteDiff1D F h

def discreteLaplacianOp (u : Vec) (h : Float) : Vec := finiteDiff2nd1D u h

def discreteBiharmonicOp (u : Vec) (h : Float) : Vec :=
  let lap := finiteDiff2nd1D u h
  finiteDiff2nd1D lap h

def advectionTerm (u : Vec) (v : Vec) (h : Float) : Vec :=
  let grad := finiteDiff1D u h
  Vec.add grad (Vec.smul 0.5 v)

def diffusionTerm (u : Vec) (kappa : Float) (h : Float) : Vec :=
  Vec.smul kappa (finiteDiff2nd1D u h)

def reactionTerm (u : Vec) (c : Float) : Vec :=
  Vec.smul c u

def fullEllipticOp (u : Vec) (kappa : Float) (v : Vec) (c : Float) (h : Float) : Vec :=
  let diff := diffusionTerm u kappa h
  let adv := advectionTerm u v h
  let react := reactionTerm u c
  Vec.add (Vec.add diff adv) react

#eval "Operators.Differential: gradient, divergence, Laplacian, biharmonic"

end MiniEllipticPDE
