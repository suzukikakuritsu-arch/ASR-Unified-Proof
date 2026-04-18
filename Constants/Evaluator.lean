import ASR.Rigidity

def main (args : List String) : IO Unit := do
  let eps_str := args.getD 0 "1.0"
  let ε := match eps_str.toNat? with
    | some n => (n : ℝ)
    | none => 1.0
  
  let bound := ASR.asr_bound ε
  
  IO.println s!"--- ASR Effective Bound Evaluator ---"
  IO.println s!"Epsilon: {ε}"
  IO.println s!"Absolute Bound (K): {bound}"
  IO.println s!"Logic: Suffocation threshold reached at omega = {ASR.critical_omega ε}"
  IO.println s!"------------------------------------"
