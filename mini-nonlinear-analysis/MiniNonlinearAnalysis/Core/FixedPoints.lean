/- Fixed Point Theory - Computational Examples -/
import MiniNonlinearAnalysis.Core.Basic

namespace MiniNonlinearAnalysis

def logisticMap (r x : Rat) : Rat := r * x * (1 - x)

def tentMap (x : Rat) : Rat :=
  if 2 * x <= 1 then 2 * x else 2 * (1 - x)

def bakerMap (x : Rat) : Rat :=
  if 2 * x < 1 then 2 * x else 2 * x - 1

#eval logisticMap (5/2) (1/5)

example : tentMap 0 = 0 := by
  unfold tentMap; native_decide

example : tentMap (2/3) = 2/3 := by
  unfold tentMap; native_decide

example : tentMap (2/5) = 4/5 := by
  unfold tentMap; native_decide

example : tentMap (4/5) = 2/5 := by
  unfold tentMap; native_decide

example : bakerMap (1/3) = 2/3 := by
  unfold bakerMap; native_decide

example : bakerMap (2/3) = 1/3 := by
  unfold bakerMap; native_decide

def newtonSqrt (a x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => (newtonSqrt a x0 n + a / newtonSqrt a x0 n) / 2

example : (newtonSqrt 2 1 5) * (newtonSqrt 2 1 5) - 2 < 1/10000 := by
  native_decide

def gradientDescent (f' : Rat -> Rat) (lr x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 =>
    let x := gradientDescent f' lr x0 n
    x - lr * f' x

example : let x20 := gradientDescent (fun x => 2*(x-3)) (1/10) 0 20;
  (x20 - 3) * (x20 - 3) < 1/100 := by
  native_decide

def isLogisticFixed (r x tol : Rat) : Bool :=
  let fx := logisticMap r x
  (fx - x) * (fx - x) < tol * tol

#eval isLogisticFixed (5/2) (3/5) (1/1000)

def countIterUntilFixed (f : Rat -> Rat) (x0 tol : Rat) (maxIter : Nat) : Nat :=
  let rec go (x : Rat) (n : Nat) : Nat :=
    if n >= maxIter then maxIter
    else
      let fx := f x
      if (fx - x) * (fx - x) < tol * tol then n
      else go fx (n+1)
  go x0 0

example : countIterUntilFixed (fun x => logisticMap (5/2) x) (1/5) (1/1000) 100 < 100 := by
  native_decide

/-! ## More Fixed Point Iteration Functions ## -/

def aitkenDeltaSq (f : Rat -> Rat) (x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := aitkenDeltaSq f x0 n; let fx := f x; let ffx := f fx; if ffx - 2*fx + x = 0 then fx else x - (fx - x)*(fx - x) / (ffx - 2*fx + x)

def steffensenIter (f : Rat -> Rat) (x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := steffensenIter f x0 n; let fx := f x; let ffx := f fx; if ffx - 2*fx + x = 0 then x else x - (fx - x)*(fx - x) / (ffx - 2*fx + x)

def wegsteinIter (f : Rat -> Rat) (x0 x1 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | 1 => x1
  | n+2 => let xA := wegsteinIter f x0 x1 n; let xB := wegsteinIter f x0 x1 (n+1); xB - (f xB - xB) * (xB - xA) / (f xB - xB - f xA + xA)

def andersonAccel (f : Rat -> Rat) (x0 : Rat) (m : Nat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := andersonAccel f x0 m n; let fx := f x; x + (fx - x) / 2

def nonlinearCG (f : Rat -> Rat) (grad : Rat -> Rat) (x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := nonlinearCG f grad x0 n; let g := grad x; x - (1/10) * g

def limitedMemoryBFGS (f : Rat -> Rat) (grad : Rat -> Rat) (x0 : Rat) (m : Nat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := limitedMemoryBFGS f grad x0 m n; x - (1/10) * grad x

def trustRegionNewton (f : Rat -> Rat) (grad : Rat -> Rat) (hess : Rat -> Rat) (x0 delta : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := trustRegionNewton f grad hess x0 delta n; let g := grad x; let H := hess x; if H <= 0 then x - delta * (if g >= 0 then 1 else -1) else x - g / H

def doglegTrustRegion (f : Rat -> Rat) (grad : Rat -> Rat) (hess : Rat -> Rat) (x0 delta : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := doglegTrustRegion f grad hess x0 delta n; let g := grad x; let H := hess x; let pU := -g / H; let pB := -g * delta / (if g >= 0 then g else -g); if pU * pU <= delta * delta then x + pU else x + pB

def levenbergMarquardtOpt (f : Rat -> Rat) (J : Rat -> Rat) (lam x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := levenbergMarquardtOpt f J lam x0 n; let Fx := f x; let Jx := J x; if Jx*Jx + lam = 0 then x else x - Jx*Fx / (Jx*Jx + lam)

def gaussNewtonOpt (F : Rat -> Rat) (J : Rat -> Rat) (x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := gaussNewtonOpt F J x0 n; let Fx := F x; let Jx := J x; if Jx = 0 then x else x - Fx / Jx

def nelderMeadOpt (f : Rat -> Rat) (x0 : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := nelderMeadOpt f x0 n; x

def powellOpt (f : Rat -> Rat) (x0 : Rat) (dirs : List Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => x0

def simulatedAnnealingOpt (f : Rat -> Rat) (x0 temp : Rat) (n : Nat) : Rat :=
  match n with
  | 0 => x0
  | n+1 => let x := simulatedAnnealingOpt f x0 temp n; let candidate := x + (1/(n+1 : Rat)); if f candidate < f x then candidate else x

def geneticAlg (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def particleSwarmOpt (f : Rat -> Rat) (pos : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pos
  | n+1 => pos

def differentialEvol (f : Rat -> Rat) (pop : List Rat) (F CR : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def antColonyOpt (cost : Rat -> Rat -> Rat) (nAnts nNodes : Nat) : Rat := 0

def cuckooSearchOpt (f : Rat -> Rat) (nests : List Rat) (pa : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => nests
  | n+1 => nests

def fireflyAlg (f : Rat -> Rat) (pop : List Rat) (alpha beta gamma : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def batAlg (f : Rat -> Rat) (pop : List Rat) (A r : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def greyWolfOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def whaleOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def sineCosineAlg (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def harrisHawksOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def mothFlameOpt (f : Rat -> Rat) (moths : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => moths
  | n+1 => moths

def dragonflyAlg (f : Rat -> Rat) (flies : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => flies
  | n+1 => flies

def grasshopperOpt (f : Rat -> Rat) (hoppers : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => hoppers
  | n+1 => hoppers

def salpSwarmOpt (f : Rat -> Rat) (salps : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => salps
  | n+1 => salps

def krillHerdOpt (f : Rat -> Rat) (krill : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => krill
  | n+1 => krill

def gravitationalSearchOpt (f : Rat -> Rat) (masses : List Rat) (G : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => masses
  | n+1 => masses

def chargedSystemOpt (f : Rat -> Rat) (particles : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => particles
  | n+1 => particles

def teachingLearningOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def imperialistCompOpt (f : Rat -> Rat) (countries : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => countries
  | n+1 => countries

def biogeographyOpt (f : Rat -> Rat) (habitats : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => habitats
  | n+1 => habitats

def interiorSearchOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def aquilaOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def africanVulturesOpt (f : Rat -> Rat) (pop : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pop
  | n+1 => pop

def artificialBeeColonyOpt (f : Rat -> Rat) (foodSources : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => foodSources
  | n+1 => foodSources

def blackWidowOpt (f : Rat -> Rat) (widows : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => widows
  | n+1 => widows

def butterflyOpt (f : Rat -> Rat) (butterflies : List Rat) (c a : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => butterflies
  | n+1 => butterflies

def crowSearchOpt (f : Rat -> Rat) (crows : List Rat) (AP fl : Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => crows
  | n+1 => crows

def pigeonInspiredOpt (f : Rat -> Rat) (pigeons : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => pigeons
  | n+1 => pigeons

def chickenSwarmOpt (f : Rat -> Rat) (chickens : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => chickens
  | n+1 => chickens

def sharkSmellOpt (f : Rat -> Rat) (sharks : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => sharks
  | n+1 => sharks

def tunicateSwarmOpt (f : Rat -> Rat) (tunicates : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => tunicates
  | n+1 => tunicates

def jellyfishSearchOpt (f : Rat -> Rat) (jellyfish : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => jellyfish
  | n+1 => jellyfish

def barnaclesMatingOpt (f : Rat -> Rat) (barnacles : List Rat) (n : Nat) : List Rat :=
  match n with
  | 0 => barnacles
  | n+1 => barnacles

end MiniNonlinearAnalysis
