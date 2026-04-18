import Lake
open Lake DSL

package «asr_unified_proof» {
}

@[default_target]
lean_lib «ASR» {
  -- ASR, Conjectures, Constants フォルダをすべて含める設定
  globs := #[.submodules `ASR, .submodules `Conjectures, .submodules `Constants]
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"
