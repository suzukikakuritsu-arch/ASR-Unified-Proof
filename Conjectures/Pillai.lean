import Conjectures.ABC

namespace ASR

/-- 指数不定方程式 x^a - y^b = k の解が有限であることを ASR で縛る -/
theorem pillai_finiteness (k : ℕ) :
  ∃ (S : List (ℕ × ℕ × ℕ × ℕ)), ∀ (x a y b : ℕ),
    x^a - y^b = k → (x, a, y, b) ∈ S := by
  sorry

end ASR
