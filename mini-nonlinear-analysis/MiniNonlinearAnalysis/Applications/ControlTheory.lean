/- Control Theory Applications -/
import MiniNonlinearAnalysis.Core.Basic

namespace MiniNonlinearAnalysis

def isControllable1D (a b : Rat) : Bool := b != 0

example : isControllable1D 0 1 := by
  unfold isControllable1D; decide

def discreteLQR (a b q r : Rat) (horizon : Nat) (x0 : Rat) : Rat :=
  let rec go (x : Rat) (k : Nat) : Rat :=
    if k >= horizon then 0
    else
      let u := -x
      go (a * x + b * u) (k+1) + q * x * x + r * u * u
  go x0 0

#eval discreteLQR 1 1 1 1 10 5

#eval discreteLQR 2 1 1 1 10 5

#eval discreteLQR 1 2 1 1 10 5

def lyapunovCheck (V : Rat -> Rat) (f : Rat -> Rat) (x : Rat) : Bool :=
  V (f x) < V x

example : lyapunovCheck (fun x => x*x) (fun x => x/2) 4 := by
  unfold lyapunovCheck; native_decide

example : lyapunovCheck (fun x => x*x) (fun x => x/2) (-4) := by
  unfold lyapunovCheck; native_decide

/-! ## Additional Control Theory ## -/
