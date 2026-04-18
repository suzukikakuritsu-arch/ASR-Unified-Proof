import Mathlib.Data.Nat.Prime
import Mathlib.Data.Nat.Factors

namespace ASR

/-- ABC三つ組の構造定義 -/
structure Triple where
  a : ℕ
  b : ℕ
  c : ℕ
  pos : 0 < a ∧ 0 < b
  sum : a + b = c
  coprime : Nat.gcd a b = 1

/-- 根基 (Radical) の定義：nの互いに異なる素因数の積 -/
def radical (n : ℕ) : ℕ :=
  if n = 0 then 0 
  else (n.primeFactorsList.eraseDups).prod

/-- 次数 (Omega) の定義：素因数の種類数 -/
def omega (n : ℕ) : ℕ :=
  (n.primeFactorsList.eraseDups).length

end ASR
