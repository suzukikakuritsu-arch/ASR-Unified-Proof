import ASR.Rigidity

namespace ASR

/-- ASR定数に基づき、十分大きな n でフェルマー方程式に解がないことを示す -/
theorem fermat_large_n (n : ℕ) (x y z : ℕ) :
  n > asr_bound 1.0 → x^n + y^n = z^n → x * y * z = 0 := by
  sorry

end ASR
