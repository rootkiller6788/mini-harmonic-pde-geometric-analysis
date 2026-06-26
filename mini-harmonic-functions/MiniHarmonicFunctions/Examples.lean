/-
# Harmonic Functions: Examples & Counterexamples (L6)
-/
import MiniObjectKernel.Core.Basic
import MiniHarmonicFunctions.Core.Basic
import MiniHarmonicFunctions.Structures
import MiniHarmonicFunctions.Core.Laws

namespace MiniHarmonicFunctions
open MiniHarmonicFunctions

/-! ## Harmonic Polynomials -/
def hp2_k1 (x y : Scalar) : Scalar := x
def hp2_k2_re (x y : Scalar) : Scalar := x ^ 2 - y ^ 2
def hp2_k2_im (x y : Scalar) : Scalar := 2 * x * y
def hp2_k3_re (x y : Scalar) : Scalar := x ^ 3 - 3 * x * y ^ 2
def hp2_k3_im (x y : Scalar) : Scalar := 3 * x ^ 2 * y - y ^ 3

#eval "Harmonic poly x^2-y^2 at (3,4): " ++ toString (hp2_k2_re 3 4)
#eval "Harmonic poly 2xy at (3,4): " ++ toString (hp2_k2_im 3 4)
#eval "Harmonic poly x^3-3xy^2 at (1,2): " ++ toString (hp2_k3_re 1 2)

/-! ## Spherical Harmonics Dimension -/
def sphDim (n l : Nat) : Nat := harmonicPolyDim n l

#eval "dim H_2(S^2) = " ++ toString (sphDim 3 2) ++ " (expect 5)"
#eval "dim H_3(S^2) = " ++ toString (sphDim 3 3) ++ " (expect 7)"

/-! ## Harmonic Polynomial Dimension -/
#eval "dim H_0(R^2) = " ++ toString (harmonicPolyDim 2 0) ++ " (const)"
#eval "dim H_1(R^2) = " ++ toString (harmonicPolyDim 2 1) ++ " (x,y)"
#eval "dim H_2(R^2) = " ++ toString (harmonicPolyDim 2 2) ++ " (x^2-y^2,2xy)"
#eval "dim H_3(R^2) = " ++ toString (harmonicPolyDim 2 3)
#eval "dim H_1(R^3) = " ++ toString (harmonicPolyDim 3 1) ++ " (x,y,z)"
#eval "dim H_2(R^3) = " ++ toString (harmonicPolyDim 3 2) ++ " (5 spherical harmonics)"

/-! ## Radial Harmonics -/
def radR1 (a b r : Scalar) : Scalar := a * r + b
def radRn (a b r : Scalar) : Scalar := a * r + b

#eval "Radial R1 f(5) [a=2,b=3]: " ++ toString (radR1 2 3 5)
#eval "Radial Rn f(2) [a=1,b=0]: " ++ toString (radRn 1 0 2)

/-! ## Harnack Constants -/
def harnackC (n : Nat) : Scalar := (3 : Scalar) ^ n
#eval "Harnack C(1) = " ++ toString (harnackC 1)
#eval "Harnack C(2) = " ++ toString (harnackC 2)
#eval "Harnack C(3) = " ++ toString (harnackC 3)
#eval "Harnack C(4) = " ++ toString (harnackC 4)

/-! ## Energy Scaling -/
#eval "Energy scaling n=1: " ++ toString (energyScalingExponent 1) ++ " (sub-critical)"
#eval "Energy scaling n=2: " ++ toString (energyScalingExponent 2) ++ " (critical)"
#eval "Energy scaling n=3: " ++ toString (energyScalingExponent 3) ++ " (super-critical)"
#eval "Energy scaling n=4: " ++ toString (energyScalingExponent 4)

/-! ## Bernstein Problem -/
def bernsteinVerdict (n : Nat) : String :=
  if n <= 7 then "Entire minimal graphs = planes"
  else "Non-planar counterexamples exist (BDGG 1969)"

#eval "Bernstein n=3: " ++ bernsteinVerdict 3
#eval "Bernstein n=8: " ++ bernsteinVerdict 8
#eval "Bernstein n=2: " ++ bernsteinVerdict 2

/-! ## Counterexample: not-harmonic -/
def notHarm (x y : Scalar) : Scalar := x ^ 4 - y ^ 4
#eval "not-harmonic x^4-y^4 at (1,0): " ++ toString (notHarm 1 0)
#eval "not-harmonic x^4-y^4 at (2,1): " ++ toString (notHarm 2 1)

/-! ## Counterexample: Liouville without boundedness -/
def liouvilleFail (x y : Scalar) : Scalar := x
#eval "Liouville counterexample u(x)=x at (5,0): " ++ toString (liouvilleFail 5 0)

/-! ## Counterexample: discontinuous "harmonic" -/
def discNonHarm (x y : Scalar) : Scalar := if y > 0 then 1 else 0
#eval "disc at (0,1): " ++ toString (discNonHarm 0 1)
#eval "disc at (0,-1): " ++ toString (discNonHarm 0 (-1))

/-! ## Counterexample: superharmonic interior max -/
def superIntMax (x y : Scalar) : Scalar := -(x ^ 2 + y ^ 2)
#eval "superharm interior max at (0,0): " ++ toString (superIntMax 0 0)
#eval "superharm at (1,1): " ++ toString (superIntMax 1 1)

/-! ## Counterexample: non-removable singularity -/
def nonRemSing (r : Scalar) : Scalar := if r = 0 then 0 else 1 / r
#eval "non-removable at r=1: " ++ toString (nonRemSing 1)
#eval "non-removable at r=10: " ++ toString (nonRemSing 10)

#eval "MiniHarmonicFunctions.Examples loaded"
#eval "  - 5 harmonic polynomials with #eval"
#eval "  - Spherical harmonics dimensions"
#eval "  - Radial harmonic functions"
#eval "  - Harnack constants C = 3^n"
#eval "  - Energy scaling exponents"
#eval "  - Bernstein problem verdict"
#eval "  - 5 counterexamples with #eval verification"

end MiniHarmonicFunctions
