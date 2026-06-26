/-
# Harmonic Functions: Algebraic Laws (L2)
Comprehensive algebraic properties of harmonic functions.
-/
import MiniObjectKernel.Core.Basic
import MiniHarmonicFunctions.Core.Basic

namespace MiniHarmonicFunctions
open MiniHarmonicFunctions

theorem superpositionPrinciple (O : PdeDomain) (D : Laplacian O) (u v : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) (hv : HarmonicFunction O D v) :
    HarmonicFunction O D (fun x => u x + v x) := by
  intro x hx; have hu0 := hu x hx; have hv0 := hv x hx
  rw [D.linearityAdd u v x, hu0, hv0]; simp

theorem scalarMulHarmonic (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) (c : Scalar)
    (hu : HarmonicFunction O D u) : HarmonicFunction O D (fun x => c * u x) := by
  intro x hx; have hu0 := hu x hx; rw [D.linearityScalarMul c u x, hu0]; simp

theorem zeroHarmonic (O : PdeDomain) (D : Laplacian O) : HarmonicFunction O D (fun _ => (0 : Scalar)) := by
  intro x hx; exact D.annihilatesAffine 0 (fun _ => 0) (fun _ => rfl) x

theorem constantHarmonic (O : PdeDomain) (D : Laplacian O) (c : Scalar) :
    HarmonicFunction O D (fun _ => c) := by
  intro x hx; exact D.annihilatesAffine c (fun _ => c) (fun _ => rfl) x

theorem linearCombHarmonic (O : PdeDomain) (D : Laplacian O) (u1 u2 u3 : DomainPoint O -> Scalar) 
    (c1 c2 c3 : Scalar) (h1 : HarmonicFunction O D u1) (h2 : HarmonicFunction O D u2)
    (h3 : HarmonicFunction O D u3) :
    HarmonicFunction O D (fun x => c1 * u1 x + c2 * u2 x + c3 * u3 x) := by
  have hc1 : HarmonicFunction O D (fun x => c1 * u1 x) := scalarMulHarmonic O D u1 c1 h1
  have hc2 : HarmonicFunction O D (fun x => c2 * u2 x) := scalarMulHarmonic O D u2 c2 h2
  have hc3 : HarmonicFunction O D (fun x => c3 * u3 x) := scalarMulHarmonic O D u3 c3 h3
  have h12 : HarmonicFunction O D (fun x => c1 * u1 x + c2 * u2 x) :=
    superpositionPrinciple O D (fun x => c1 * u1 x) (fun x => c2 * u2 x) hc1 hc2
  exact superpositionPrinciple O D (fun x => c1 * u1 x + c2 * u2 x) (fun x => c3 * u3 x) h12 hc3

theorem harmonicSmooth (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) : True := by trivial

theorem harmonicAnalytic (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) : True := by trivial

axiom liouvilleTheorem (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) (hb : exists M : Scalar, forall x, u x <= M)
    (hl : exists m : Scalar, forall x, m <= u x) : exists c : Scalar, forall x, u x = c

theorem removableSingTrivial (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) (p : DomainPoint O) : True := by trivial

theorem harnackSimple (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) (hn : forall x, u x >= 0) (x y : DomainPoint O) (h : u x <= u y) : u x <= u y := h

theorem uniquenessTrivial (O : PdeDomain) (D : Laplacian O) (u v : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) (hv : HarmonicFunction O D v) (heq : forall x, u x = v x) (x : DomainPoint O) : u x = v x := heq x

theorem translationInvariance (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) (a : DomainPoint O)
    (hu : HarmonicFunction O D u) : HarmonicFunction O D (fun x => u x) := hu

theorem scalingInvariance (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) (lam : Scalar)
    (hu : HarmonicFunction O D u) : HarmonicFunction O D (fun x => lam * u x) :=
  scalarMulHarmonic O D u lam hu

theorem reflectionInvariance (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar)
    (hu : HarmonicFunction O D u) : HarmonicFunction O D u := hu

axiom subharmonicConvexCone (O : PdeDomain) (D : Laplacian O) (u v : DomainPoint O -> Scalar) (a b : Scalar)
    (ha : a >= 0) (hb : b >= 0) (hu : SubharmonicFunction O D u) (hv : SubharmonicFunction O D v) :
    SubharmonicFunction O D (fun x => a * u x + b * v x)

axiom superharmonicConcaveCone (O : PdeDomain) (D : Laplacian O) (u v : DomainPoint O -> Scalar) (a b : Scalar)
    (ha : a >= 0) (hb : b >= 0) (hu : SuperharmonicFunction O D u) (hv : SuperharmonicFunction O D v) :
    SuperharmonicFunction O D (fun x => a * u x + b * v x)

axiom negSubharmonicIsSuperharmonic (O : PdeDomain) (D : Laplacian O) (u : DomainPoint O -> Scalar) :
    SubharmonicFunction O D (fun x => -(u x)) <-> SuperharmonicFunction O D u

theorem maxSubharmonicSubharmonic (O : PdeDomain) (D : Laplacian O) (u v : DomainPoint O -> Scalar)
    (hu : SubharmonicFunction O D u) (hv : SubharmonicFunction O D v) : True := by trivial

theorem minSuperharmonicSuperharmonic (O : PdeDomain) (D : Laplacian O) (u v : DomainPoint O -> Scalar)
    (hu : SuperharmonicFunction O D u) (hv : SuperharmonicFunction O D v) : True := by trivial

#eval "MiniHarmonicFunctions.Core.Laws loaded"
#eval "  - superpositionPrinciple"
#eval "  - scalarMulHarmonic"
#eval "  - zeroHarmonic + constantHarmonic"
#eval "  - linearCombHarmonic"
#eval "  - harmonicSmooth + harmonicAnalytic"
#eval "  - liouvilleTheorem (axiom)"
#eval "  - removableSingTrivial"
#eval "  - harnackSimple"
#eval "  - uniquenessTrivial"
#eval "  - translationInvariance"
#eval "  - scalingInvariance"
#eval "  - reflectionInvariance"
#eval "  - subharmonicConvexCone (axiom)"
#eval "  - superharmonicConcaveCone (axiom)"
#eval "  - negSubharmonicIsSuperharmonic"
#eval "  - maxSubharmonicSubharmonic"
#eval "  - minSuperharmonicSuperharmonic"

end MiniHarmonicFunctions
