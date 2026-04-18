import Mathlib.Data.Nat.Prime
import Mathlib.Data.Nat.Factors

namespace ASR

structure Triple where
  a : ℕ
  b : ℕ
  c : ℕ
  pos : 0 < a ∧ 0 < b
  sum : a + b = c
  coprime : Nat.gcd a b = 1

def radical (n : ℕ) : ℕ :=
  if n = 0 then 0 
  else (n.primeFactorsList.eraseDups).prod

def omega (n : ℕ) : ℕ :=
  (n.primeFactorsList.eraseDups).length

end ASR
