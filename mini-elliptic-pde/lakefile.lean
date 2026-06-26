import Lake
open Lake DSL

package «mini-elliptic-pde» where

@[default_target]
lean_lib «MiniEllipticPDE» where
  roots := #[`MiniEllipticPDE]

require «mini-object-kernel» from "../../0. mini-math-kernel/mini-object-kernel"
