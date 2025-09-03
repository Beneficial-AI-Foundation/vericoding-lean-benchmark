import Lake
open Lake DSL

require mathlib from git
  "https://github.com/leanprover-community/mathlib4" @ "v4.21.0"

package «benchmark» where
  leanOptions := #[
    ⟨`autoImplicit, false⟩
  ]

@[default_target]
lean_lib «benchmark» where
  globs := #[.submodules `Imports, .submodules `benchmark]
