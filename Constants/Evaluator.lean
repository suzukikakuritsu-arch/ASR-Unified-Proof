import ASR.Rigidity

def main (args : List String) : IO Unit := do
  let eps_str := args.getD 0 "1.0"
  let ε := eps_str.toFloat |>.map (fun f => f) |>.getD 1.0
  
  -- ASRエンジンによる計算
  let bound := ASR.asr_bound ε
  
  IO.println s!"--- ASR Effective Calculation ---"
  IO.println s!"Input Epsilon: {ε}"
  IO.println s!"Calculated Bound (C < K): {bound}"
  IO.println s!"---------------------------------"
