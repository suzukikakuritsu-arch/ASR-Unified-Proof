import ASR.Basic
import Mathlib.Analysis.SpecialFunctions.Log.Basic

namespace ASR

noncomputable section

def critical_omega (ε : ℝ) : ℕ := 
  if ε ≤ 0 then 0 else ⌈200.0 / ε⌉₊

def asr_bound (ε : ℝ) : ℕ :=
  (Real.exp (critical_omega ε : ℝ)).ceil.toNat

end ASR
