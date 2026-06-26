import Lake
open Lake DSL

package «mini-geometric-analysis» where

@[default_target]
lean_lib «MiniGeometricAnalysis» where
  roots := #[`MiniGeometricAnalysis]

require «mini-object-kernel» from "../../0. mini-math-kernel/mini-object-kernel"
