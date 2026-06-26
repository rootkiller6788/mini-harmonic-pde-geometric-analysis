-- Calculus of Variations -- File 1
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def f1_pred (a : Scalar) : Prop := a > -499
def f2_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2) N
def f3_lag : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x + 0
def f4_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f5_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f6_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f7_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f8_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f9_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f10_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f11_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f12_scalar (a b : Scalar) : Scalar := a*a + b*b + 12
def f13_pred (a : Scalar) : Prop := a > -487
def f14_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 14) N
def f15_lag : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x + 0
def f16_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f17_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f18_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f19_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f20_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f21_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f22_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f23_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f24_scalar (a b : Scalar) : Scalar := a*a + b*b + 24
def f25_pred (a : Scalar) : Prop := a > -475
def f26_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 26) N
def f27_lag : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x + 0
def f28_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f29_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f30_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f31_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f32_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f33_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f34_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f35_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f36_scalar (a b : Scalar) : Scalar := a*a + b*b + 36
def f37_pred (a : Scalar) : Prop := a > -463
def f38_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 38) N
def f39_lag : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x + 0
def f40_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f41_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f42_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f43_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f44_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f45_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f46_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f47_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f48_scalar (a b : Scalar) : Scalar := a*a + b*b + 48
def f49_pred (a : Scalar) : Prop := a > -451
def f50_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 50) N
def f51_lag : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x + 0
def f52_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f53_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f54_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f55_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f56_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f57_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f58_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f59_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f60_scalar (a b : Scalar) : Scalar := a*a + b*b + 60
def f61_pred (a : Scalar) : Prop := a > -439
def f62_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 62) N
def f63_lag : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x + 0
def f64_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f65_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f66_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f67_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f68_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f69_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f70_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f71_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f72_scalar (a b : Scalar) : Scalar := a*a + b*b + 72
def f73_pred (a : Scalar) : Prop := a > -427
def f74_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 74) N
def f75_lag : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x + 0
def f76_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f77_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f78_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f79_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f80_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f81_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f82_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f83_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f84_scalar (a b : Scalar) : Scalar := a*a + b*b + 84
def f85_pred (a : Scalar) : Prop := a > -415
def f86_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 86) N
def f87_lag : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x + 0
def f88_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f89_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f90_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f91_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f92_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f93_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f94_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f95_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f96_scalar (a b : Scalar) : Scalar := a*a + b*b + 96
def f97_pred (a : Scalar) : Prop := a > -403
def f98_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 98) N
def f99_lag : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x + 0
def f100_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f101_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f102_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f103_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f104_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f105_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f106_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f107_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f108_scalar (a b : Scalar) : Scalar := a*a + b*b + 108
def f109_pred (a : Scalar) : Prop := a > -391
def f110_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 110) N
def f111_lag : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x + 0
def f112_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f113_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f114_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f115_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f116_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f117_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f118_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f119_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f120_scalar (a b : Scalar) : Scalar := a*a + b*b + 120
def f121_pred (a : Scalar) : Prop := a > -379
def f122_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 122) N
def f123_lag : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x + 0
def f124_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f125_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f126_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f127_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f128_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f129_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f130_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f131_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f132_scalar (a b : Scalar) : Scalar := a*a + b*b + 132
def f133_pred (a : Scalar) : Prop := a > -367
def f134_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 134) N
def f135_lag : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x + 0
def f136_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f137_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f138_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f139_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f140_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f141_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f142_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f143_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f144_scalar (a b : Scalar) : Scalar := a*a + b*b + 144
def f145_pred (a : Scalar) : Prop := a > -355
def f146_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 146) N
def f147_lag : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x + 0
def f148_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f149_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f150_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f151_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f152_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f153_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f154_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f155_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f156_scalar (a b : Scalar) : Scalar := a*a + b*b + 156
def f157_pred (a : Scalar) : Prop := a > -343
def f158_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 158) N
def f159_lag : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x + 0
def f160_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f161_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f162_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f163_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f164_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f165_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f166_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f167_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f168_scalar (a b : Scalar) : Scalar := a*a + b*b + 168
def f169_pred (a : Scalar) : Prop := a > -331
def f170_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 170) N
def f171_lag : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x + 0
def f172_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f173_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f174_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f175_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f176_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f177_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f178_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f179_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f180_scalar (a b : Scalar) : Scalar := a*a + b*b + 180
def f181_pred (a : Scalar) : Prop := a > -319
def f182_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 182) N
def f183_lag : Lagrangian := fun t x dx => 2*dx*dx - 4*x*x + 0
def f184_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f185_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f186_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f187_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f188_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f189_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f190_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f191_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f192_scalar (a b : Scalar) : Scalar := a*a + b*b + 192
def f193_pred (a : Scalar) : Prop := a > -307
def f194_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 194) N
def f195_lag : Lagrangian := fun t x dx => 7*dx*dx - 1*x*x + 0
def f196_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f197_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f198_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f199_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f200_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f201_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f202_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f203_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f204_scalar (a b : Scalar) : Scalar := a*a + b*b + 204
def f205_pred (a : Scalar) : Prop := a > -295
def f206_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 206) N
def f207_lag : Lagrangian := fun t x dx => 5*dx*dx - 3*x*x + 0
def f208_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f209_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f210_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f211_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f212_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f213_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f214_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f215_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f216_scalar (a b : Scalar) : Scalar := a*a + b*b + 216
def f217_pred (a : Scalar) : Prop := a > -283
def f218_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 218) N
def f219_lag : Lagrangian := fun t x dx => 3*dx*dx - 5*x*x + 0
def f220_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f221_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f222_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f223_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f224_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f225_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f226_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f227_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f228_scalar (a b : Scalar) : Scalar := a*a + b*b + 228
def f229_pred (a : Scalar) : Prop := a > -271
def f230_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 230) N
def f231_lag : Lagrangian := fun t x dx => 1*dx*dx - 2*x*x + 0
def f232_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f233_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f234_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f235_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f236_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f237_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f238_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f239_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f240_scalar (a b : Scalar) : Scalar := a*a + b*b + 240
def f241_pred (a : Scalar) : Prop := a > -259
def f242_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 242) N
def f243_lag : Lagrangian := fun t x dx => 6*dx*dx - 4*x*x + 0
def f244_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f245_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f246_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f247_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f248_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f249_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f250_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f251_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f252_scalar (a b : Scalar) : Scalar := a*a + b*b + 252
def f253_pred (a : Scalar) : Prop := a > -247
def f254_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 254) N
def f255_lag : Lagrangian := fun t x dx => 4*dx*dx - 1*x*x + 0
def f256_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f257_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f258_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f259_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f260_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f261_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f262_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f263_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f264_scalar (a b : Scalar) : Scalar := a*a + b*b + 264
def f265_pred (a : Scalar) : Prop := a > -235
def f266_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 266) N
def f267_lag : Lagrangian := fun t x dx => 2*dx*dx - 3*x*x + 0
def f268_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f269_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f270_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f271_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f272_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f273_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f274_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f275_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f276_scalar (a b : Scalar) : Scalar := a*a + b*b + 276
def f277_pred (a : Scalar) : Prop := a > -223
def f278_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 278) N
def f279_lag : Lagrangian := fun t x dx => 7*dx*dx - 5*x*x + 0
def f280_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f281_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f282_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f283_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f284_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f285_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f286_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f287_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f288_scalar (a b : Scalar) : Scalar := a*a + b*b + 288
def f289_pred (a : Scalar) : Prop := a > -211
def f290_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 290) N
def f291_lag : Lagrangian := fun t x dx => 5*dx*dx - 2*x*x + 0
def f292_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f293_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f294_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f295_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f296_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f297_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f298_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f299_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f300_scalar (a b : Scalar) : Scalar := a*a + b*b + 300

#eval IO.println "File 1 definitions loaded"