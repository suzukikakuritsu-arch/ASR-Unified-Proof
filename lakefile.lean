import Lake
open Lake DSL

package «asr_unified_proof» {
  -- プロジェクトの基本設定
}

@[default_target]
lean_lib «ASR» {
  -- ASRディレクトリをライブラリとして登録
}

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"
