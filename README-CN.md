# Mini Harmonic PDE & Geometric Analysis（迷你调和分析与PDE几何分析）

一套**从零开始、零依赖的 Lean 4 形式化实现**，涵盖调和函数、偏微分方程（椭圆/抛物/双曲）、变分法、非线性分析、谱理论和几何分析。每个模块对应 MIT 及其他顶尖大学的课程，将教科书中的定理编码为经过 Lean 4 验证的形式化代码，实现非形式数学与形式证明之间的桥接。

## 子模块

| 子模块 | 主题 | 参考课程 |
|------|------|------|
| [mini-calculus-of-variations](mini-calculus-of-variations/) | Euler-Lagrange 方程、离散作用量原理、Hamilton 力学、最优控制、Gamma 收敛 | MIT 18.701, Princeton MAT 520 |
| [mini-elliptic-pde](mini-elliptic-pde/) | Lax-Milgram 定理、极大值原理、正则性理论、变分方法、Poisson/Laplace 方程 | MIT 18.152, Stanford MATH 205 |
| [mini-geometric-analysis](mini-geometric-analysis/) | Riemann 度量、曲率张量、Ricci 流、比较几何、谱几何、Bochner 技巧 | MIT 18.950, Princeton MAT 560 |
| [mini-harmonic-functions](mini-harmonic-functions/) | 均值性质、Perron 方法、Dirichlet 问题、位势理论、Harnack/Liouville 定理 | MIT 18.152, Cambridge Part III |
| [mini-hyperbolic-pde](mini-hyperbolic-pde/) | 波动方程、d'Alembert 公式、特征线法、能量守恒、CFL 条件、Huygens 原理 | MIT 18.155, Stanford MATH 220 |
| [mini-nonlinear-analysis](mini-nonlinear-analysis/) | Banach/Picard 不动点、单调算子、分岔理论、度理论、变分方法 | MIT 18.155, Princeton MAT 520 |
| [mini-parabolic-pde](mini-parabolic-pde/) | 热方程、半群理论、极大值原理、扩散过程、Ricci/平均曲率流 | MIT 18.152, ETH 401-3652 |
| [mini-spectral-theory-pde](mini-spectral-theory-pde/) | 特征值/特征函数、Rayleigh 商、Courant-Fischer、谱分解、Weyl 定律 | MIT 18.102, Stanford MATH 271 |

## 设计理念

- **零外部依赖** — 纯 Lean 4 内核（`Init`、`Nat`、`Rat`、`List`、`Fin`），不依赖 Mathlib4，自包含 Lake 构建
- **形式化验证优先** — 每个定理均由 Lean 内核类型检查；核心定理携带机器验证证明（零 `sorry`）
- **分层知识覆盖** — 每个模块从 L1（定义）递进至 L9（研究前沿），具备清晰的教学结构
- **模块自包含** — 每个子模块自带 `lakefile.lean`、`docs/`、`examples/` 和课程对齐说明

## 构建方式

每个模块相互独立。进入模块目录后运行：

```bash
cd mini-calculus-of-variations
lake build                     # 编译全部模块
lake env lean --run Main.lean  # 运行入口程序
```

需要 **Lean 4**（v4.7.0+）和 **Lake** 构建系统。

## 项目结构

```
mini-harmonic-pde-geometric-analysis/
├── mini-calculus-of-variations/   # Euler-Lagrange、离散作用量、变分原理
├── mini-elliptic-pde/             # 椭圆 PDE、Lax-Milgram、极大值原理、正则性
├── mini-geometric-analysis/       # Riemann 几何、曲率、几何流、谱理论
├── mini-harmonic-functions/       # 调和函数、均值性质、Perron 方法、位势理论
├── mini-hyperbolic-pde/           # 波动方程、特征线法、能量方法、守恒律
├── mini-nonlinear-analysis/       # 不动点、单调算子、分岔理论、度理论
├── mini-parabolic-pde/            # 热方程、半群、扩散、几何演化方程
└── mini-spectral-theory-pde/      # 谱理论、特征值、Courant-Fischer、特征函数
```

## 许可证

MIT
