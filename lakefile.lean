import Lake
open Lake DSL

package «asr_unified_proof» {
}

@[default_target]
lean_lib «ASR» {
  srcDir := "."
  roots := #[`ASR, `Conjectures, `Constants]
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"
