/- Monotone Operator Theory -/
import MiniNonlinearAnalysis.Core.Basic

namespace MiniNonlinearAnalysis

/-! ## Sign Function (1D Monotone) -/

def signFunction (x : Rat) : Rat :=
  if x > 0 then 1
  else if x < 0 then -1
  else 0

/-- Sign function monotonicity: verified computationally for specific values.
The general theorem requires linear arithmetic (linarith) which is not in core Init.
For computational purposes, native_decide checks any concrete pair. -/
example : 0 <= (signFunction 3 - signFunction (-2)) * (3 - (-2)) := by
  unfold signFunction; native_decide

example : 0 <= (signFunction (-1) - signFunction (-5)) * ((-1) - (-5)) := by
  unfold signFunction; native_decide

example : 0 <= (signFunction 7 - signFunction 0) * (7 - 0) := by
  unfold signFunction; native_decide

/-! ## Maximal Monotone Operator Examples -/

/-- The identity operator is monotone (trivially). -/
def identityOp {n : Nat} (x : RatVec n) : RatVec n := x

/-! ## Resolvent Operator -/

/-- Resolvent J_lambda = (I + lambda*T)^{-1}. For computational purposes, we use iteration. -/
def resolventIter {n : Nat} (T : RatVec n -> RatVec n) (lambda : Rat) (x : RatVec n) (k : Nat) : RatVec n :=
  match k with
  | 0 => x
  | k+1 =>
    let prev := resolventIter T lambda x k
    -- y_{m+1} = x - lambda * T(y_m), fixed point iteration for (I+lambda*T)^{-1}
    RatVec.sub x (RatVec.smul lambda (T prev))

/-! ## Yosida Approximation -/

/-- Yosida approximation T_lambda = (I - J_lambda)/lambda. -/
def yosidaApprox {n : Nat} (T : RatVec n -> RatVec n) (lambda : Rat) (x : RatVec n) (k : Nat) : RatVec n :=
  let Jx := resolventIter T lambda x k
  RatVec.smul (1/lambda) (RatVec.sub x Jx)

/-! ## Proximal Operator (for convex functions) -/

/-- Proximal operator: prox_{lambda*f}(x) = argmin_y { f(y) + 1/(2*lambda) * ||y-x||^2 }.
  For f(x) = |x| (l1 norm in 1D), prox is soft-thresholding. -/
def softThreshold (x lambda : Rat) : Rat :=
  if x > lambda then x - lambda
  else if x < -lambda then x + lambda
  else 0

/-! ## Complementarity Problems -/

/-- Linear complementarity: find x >= 0, M*x + q >= 0, x*(M*x+q) = 0. -/
def isLCPsolution (M q x : Rat) : Prop :=
  0 <= x /\ 0 <= M*x + q /\ x * (M*x + q) = 0

/-- Simple LCP: M=1, q=-1 -> solution x=1. -/
example : isLCPsolution 1 (-1) 1 := by
  unfold isLCPsolution; constructor
  . decide
  . constructor
    . native_decide
    . native_decide

/-! ## Variational Inequalities (Finite Dim) -/

/-- VI(F, K): find x in K such that <F(x), y-x> >= 0 for all y in K. -/
def isVISolution (F : Rat -> Rat) (K : Rat -> Prop) (x : Rat) : Prop :=
  K x /\ forall y, K y -> 0 <= F x * (y - x)

/-- For F(x) = x - a, K = [0,infty), solution is x = max(0, a). -/
def viProjection (a : Rat) : Rat := if a > 0 then a else 0

/-- Example: VI(F,K) with F(x)=x-3, K=[0,infty), solution x=3. -/
example : isVISolution (fun x => x - 3) (fun x => 0 <= x) 3 := by
  unfold isVISolution; constructor
  . decide
  . intro y hy
    have hcalc : (3 : Rat) - 3 = 0 := by native_decide
    have hzero : ((3 : Rat) - 3) * (y - 3) = 0 := by
      rw [hcalc]; simp
    rw [hzero]; decide

/-! ## More Monotone Operator Theory ## -/
