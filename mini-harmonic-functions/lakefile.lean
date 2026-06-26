import Lake
open Lake DSL

package «mini-harmonic-functions» where

@[default_target]
lean_lib «MiniHarmonicFunctions» where
  roots := #[`MiniHarmonicFunctions]

require «mini-object-kernel» from "../../0. mini-math-kernel/mini-object-kernel"
