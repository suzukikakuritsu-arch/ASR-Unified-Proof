import Lake
open Lake DSL

package «asr_unified_proof» {
}

@[default_target]
lean_lib «ASR» {
  -- 全てのサブモジュールを自動的に認識させる設定
  globs := #[.andSubmodules `ASR, .andSubmodules `Conjectures, .andSubmodules `Constants]
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"
