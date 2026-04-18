import ASR.Rigidity

namespace ASR

/-- ABC予想の実効的解釈 -/
theorem abc_finiteness (ε : ℝ) (hε : 0 < ε) :
  ∀ (t : Triple), t.c ≥ asr_bound ε → 
  (t.c : ℝ) ≤ (radical (t.a * t.b * t.c) : ℝ) ^ (1 + ε) := by
  -- ここに Rigidity.lean で証明した ASR 剛性を適用
  sorry

end ASR
