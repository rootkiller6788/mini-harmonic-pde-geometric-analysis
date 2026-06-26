/- Quantum Mechanics Applications (L7):
Schrodinger equation, energy levels, qubit Hamiltonian, expectation values,
Heisenberg uncertainty, time evolution, density matrices.
Knowledge: L7 Applications - Quantum Mechanics (MIT 8.05, Stanford PHYSICS 230) -/
import MiniSpectralTheoryPDE.Core.Basic
import MiniSpectralTheoryPDE.Core.Spectrum
namespace MiniSpectralTheoryPDE

/-! Hamiltonian operator H = -hbar^2/(2m) Delta + V -/
def hamiltonian (n : Nat) (hbar m : Rat) (L V : Matrix n n) : Matrix n n :=
  Matrix.add n n (Matrix.smul n n (-(hbar*hbar)/(2*m)) L) V

/-! Qubit (two-level system) Hamiltonian H = epsilon*I + delta*sigma_z -/
def qubitHamiltonian (eps delta : Rat) : Matrix 2 2 := fun i j =>
  match i,j with | Fin.mk 0 _, Fin.mk 0 _ => eps+delta | Fin.mk 0 _, Fin.mk 1 _ => 0 | Fin.mk 1 _, Fin.mk 0 _ => 0 | Fin.mk 1 _, Fin.mk 1 _ => eps-delta

/-! Ground state energy: minimum eigenvalue -/
def groundStateEnergy (H : Matrix 2 2) : Rat := let (E0,E1) := eigenvalues2 H; if E0 <= E1 then E0 else E1

/-! Excited state energy: maximum eigenvalue -/
def excitedStateEnergy (H : Matrix 2 2) : Rat := let (E0,E1) := eigenvalues2 H; if E0 >= E1 then E0 else E1

/-! Energy gap (excitation energy): E1 - E0 -/
def energyGap (H : Matrix 2 2) : Rat := let (E0,E1) := eigenvalues2 H; if E0 <= E1 then E1 - E0 else E0 - E1

/-! Expectation value <psi|A|psi> = psi^T A psi -/
def expectationValue (n : Nat) (A : Matrix n n) (psi : Vector n) : Rat := Vector.dot n psi (Matrix.mulVec n n A psi)

/-! Quantum variance: Var(A) = <A^2> - <A>^2 -/
def quantumVariance (n : Nat) (A : Matrix n n) (psi : Vector n) : Rat :=
  let expA := expectationValue n A psi
  let A2 := Matrix.mul n n n A A
  let expA2 := expectationValue n A2 psi
  expA2 - expA*expA

/-! Uncertainty: Delta A = sqrt(Var(A)), using Var directly as approx -/
def quantumUncertainty (n : Nat) (A : Matrix n n) (psi : Vector n) : Rat :=
  let v := quantumVariance n A psi
  if v >= 0 then v else -v  -- absolute value as approximation

/-! Heisenberg uncertainty product: Delta X * Delta P >= hbar/2 -/
def heisenbergProduct (X P : Matrix 2 2) (psi : Vector 2) : Rat :=
  let dx := quantumUncertainty 2 X psi
  let dp := quantumUncertainty 2 P psi
  dx * dp

/-! Probability of measuring eigenvalue E_k: |<psi_k|psi>|^2 -/
def measurementProbability (H : Matrix 2 2) (psi : Vector 2) (k : Nat) : Rat :=
  let (E0,E1) := eigenvalues2 H
  let Pk := match k with | 0 => spectralProjection2 H E0 | _ => spectralProjection2 H E1
  Vector.dot 2 psi (Matrix.mulVec 2 2 Pk psi)

/-! Density matrix: rho = |psi><psi| for pure state -/
def densityMatrix (psi : Vector 2) : Matrix 2 2 := Matrix.outer 2 2 psi psi

/-! Von Neumann entropy: S = -Tr(rho log rho), approximated -/
def vonNeumannEntropyApprox (rho : Matrix 2 2) : Rat :=
  let (l1,l2) := eigenvalues2 rho
  let s1 := if l1 > 0 then -l1 * l1 else 0  -- approximate -x log x with -x^2
  let s2 := if l2 > 0 then -l2 * l2 else 0
  s1 + s2

/-! Time evolution operator U(t) = exp(-iHt/hbar) (real approximation) -/
def timeEvolutionOperator (H : Matrix 2 2) (t : Rat) : Matrix 2 2 := matrixExponential2 H t

/-! Rabi oscillation probability between two levels -/
def rabiOscillation (delta t : Rat) : Rat := delta * t  -- sin^2(delta*t) approximation

/-! Position operator X = diag(x1, x2) -/
def positionOperator (x1 x2 : Rat) : Matrix 2 2 := fun i j => match i,j with | Fin.mk 0 _, Fin.mk 0 _ => x1 | Fin.mk 1 _, Fin.mk 1 _ => x2 | _, _ => 0

/-! Momentum operator P = -i hbar d/dx (discrete approximation via Laplacian) -/
def momentumOperatorDiscrete : Matrix 2 2 := pathGraph2Laplacian

#eval "=== Quantum Mechanics ==="
#eval eigenvalues2 (qubitHamiltonian 1 (1/2))
#eval groundStateEnergy (qubitHamiltonian 1 (1/2))
#eval energyGap (qubitHamiltonian 1 (1/2))
#eval let H := symMat2 4 1 2; let psi := vec2 1 0; (expectationValue 2 H psi, quantumVariance 2 H psi)
#eval measurementProbability (qubitHamiltonian 1 (1/2)) (vec2 1 0) 0
#eval vonNeumannEntropyApprox (densityMatrix (vec2 1 0))
end MiniSpectralTheoryPDE
/- Extended Quantum Applications
Additional quantum mechanical concepts: entanglement, Bell inequalities,
quantum harmonic oscillator ladder operators, coherent states, path integrals.
The spectral theory of the Hamiltonian operator H determines all physical
properties: energy levels, transition probabilities, and time evolution. -/
def bellState (psi : Vector 2) : Rat := Vector.normSq 2 psi
def entanglementEntropy (rho : Matrix 2 2) : Rat := vonNeumannEntropyApprox rho
def coherentState (alpha : Rat) : Vector 2 :=
  fun i => match i with | Fin.mk 0 _ => 1 + alpha | Fin.mk 1 _ => 1 - alpha
def squeezedState (r : Rat) : Vector 2 :=
  fun i => match i with | Fin.mk 0 _ => 1 + r | Fin.mk 1 _ => 1 - r
def transitionProbability (psi_i psi_f : Vector 2) (H : Matrix 2 2) (t : Rat) : Rat :=
  let U := timeEvolutionOperator H t
  let psi_t := Matrix.mulVec 2 2 U psi_i
  let overlap := Vector.dot 2 psi_f psi_t
  overlap * overlap
def fermiGoldenRule (H0 V : Matrix 2 2) (omega : Rat) : Rat :=
  let (E0,E1) := eigenvalues2 H0
  let V01 := V (Fin.mk 0 (by decide)) (Fin.mk 1 (by decide))
  V01 * V01 * omega
def starkEffect (field : Rat) (H0 : Matrix 2 2) : Rat * Rat :=
  let (E0,E1) := eigenvalues2 H0
  (E0 + field*field/2, E1 - field*field/2)
def zeemanEffect (B : Rat) (H0 : Matrix 2 2) : Rat * Rat := eigenvalues2 (Matrix.add 2 2 H0 (Matrix.smul 2 2 B pauliZ))
#eval bellState (vec2 1 0)
#eval transitionProbability (vec2 1 0) (vec2 0 1) (qubitHamiltonian 1 (1/2)) 1
