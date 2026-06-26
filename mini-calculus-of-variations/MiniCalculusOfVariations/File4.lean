-- Calculus of Variations -- File 4
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def g901_p (a : Scalar) : Prop := a > 401
def g902_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 902) N
def g903_lg : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x
def g904_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g905_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g906_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g907_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g908_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g909_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g910_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g911_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g912_s (a b : Scalar) : Scalar := a*a + b*b + 912
def g913_p (a : Scalar) : Prop := a > 413
def g914_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 914) N
def g915_lg : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x
def g916_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g917_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g918_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g919_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g920_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g921_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g922_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g923_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g924_s (a b : Scalar) : Scalar := a*a + b*b + 924
def g925_p (a : Scalar) : Prop := a > 425
def g926_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 926) N
def g927_lg : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x
def g928_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g929_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g930_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g931_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g932_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g933_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g934_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g935_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g936_s (a b : Scalar) : Scalar := a*a + b*b + 936
def g937_p (a : Scalar) : Prop := a > 437
def g938_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 938) N
def g939_lg : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x
def g940_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g941_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g942_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g943_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g944_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g945_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g946_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g947_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g948_s (a b : Scalar) : Scalar := a*a + b*b + 948
def g949_p (a : Scalar) : Prop := a > 449
def g950_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 950) N
def g951_lg : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x
def g952_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g953_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g954_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g955_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g956_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g957_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g958_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g959_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g960_s (a b : Scalar) : Scalar := a*a + b*b + 960
def g961_p (a : Scalar) : Prop := a > 461
def g962_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 962) N
def g963_lg : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x
def g964_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g965_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g966_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g967_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g968_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g969_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g970_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g971_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g972_s (a b : Scalar) : Scalar := a*a + b*b + 972
def g973_p (a : Scalar) : Prop := a > 473
def g974_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 974) N
def g975_lg : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x
def g976_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g977_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g978_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g979_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g980_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g981_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g982_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g983_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g984_s (a b : Scalar) : Scalar := a*a + b*b + 984
def g985_p (a : Scalar) : Prop := a > 485
def g986_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 986) N
def g987_lg : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x
def g988_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g989_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g990_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g991_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g992_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g993_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g994_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g995_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g996_s (a b : Scalar) : Scalar := a*a + b*b + 996
def g997_p (a : Scalar) : Prop := a > 497
def g998_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 998) N
def g999_lg : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x
def g1000_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1001_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1002_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1003_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1004_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1005_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1006_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1007_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1008_s (a b : Scalar) : Scalar := a*a + b*b + 1008
def g1009_p (a : Scalar) : Prop := a > 509
def g1010_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1010) N
def g1011_lg : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x
def g1012_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1013_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1014_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1015_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1016_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1017_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1018_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1019_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1020_s (a b : Scalar) : Scalar := a*a + b*b + 1020
def g1021_p (a : Scalar) : Prop := a > 521
def g1022_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1022) N
def g1023_lg : Lagrangian := fun t x dx => 2*dx*dx - 4*x*x
def g1024_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1025_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1026_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1027_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1028_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1029_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1030_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1031_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1032_s (a b : Scalar) : Scalar := a*a + b*b + 1032
def g1033_p (a : Scalar) : Prop := a > 533
def g1034_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1034) N
def g1035_lg : Lagrangian := fun t x dx => 7*dx*dx - 1*x*x
def g1036_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1037_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1038_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1039_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1040_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1041_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1042_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1043_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1044_s (a b : Scalar) : Scalar := a*a + b*b + 1044
def g1045_p (a : Scalar) : Prop := a > 545
def g1046_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1046) N
def g1047_lg : Lagrangian := fun t x dx => 5*dx*dx - 3*x*x
def g1048_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1049_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1050_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1051_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1052_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1053_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1054_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1055_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1056_s (a b : Scalar) : Scalar := a*a + b*b + 1056
def g1057_p (a : Scalar) : Prop := a > 557
def g1058_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1058) N
def g1059_lg : Lagrangian := fun t x dx => 3*dx*dx - 5*x*x
def g1060_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1061_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1062_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1063_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1064_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1065_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1066_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1067_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1068_s (a b : Scalar) : Scalar := a*a + b*b + 1068
def g1069_p (a : Scalar) : Prop := a > 569
def g1070_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1070) N
def g1071_lg : Lagrangian := fun t x dx => 1*dx*dx - 2*x*x
def g1072_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1073_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1074_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1075_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1076_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1077_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1078_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1079_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1080_s (a b : Scalar) : Scalar := a*a + b*b + 1080
def g1081_p (a : Scalar) : Prop := a > 581
def g1082_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1082) N
def g1083_lg : Lagrangian := fun t x dx => 6*dx*dx - 4*x*x
def g1084_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1085_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1086_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1087_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1088_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1089_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1090_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1091_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1092_s (a b : Scalar) : Scalar := a*a + b*b + 1092
def g1093_p (a : Scalar) : Prop := a > 593
def g1094_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1094) N
def g1095_lg : Lagrangian := fun t x dx => 4*dx*dx - 1*x*x
def g1096_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1097_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1098_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1099_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1100_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1101_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1102_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1103_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1104_s (a b : Scalar) : Scalar := a*a + b*b + 1104
def g1105_p (a : Scalar) : Prop := a > 605
def g1106_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1106) N
def g1107_lg : Lagrangian := fun t x dx => 2*dx*dx - 3*x*x
def g1108_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1109_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1110_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1111_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1112_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1113_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1114_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1115_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1116_s (a b : Scalar) : Scalar := a*a + b*b + 1116
def g1117_p (a : Scalar) : Prop := a > 617
def g1118_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1118) N
def g1119_lg : Lagrangian := fun t x dx => 7*dx*dx - 5*x*x
def g1120_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1121_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1122_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1123_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1124_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1125_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1126_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1127_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1128_s (a b : Scalar) : Scalar := a*a + b*b + 1128
def g1129_p (a : Scalar) : Prop := a > 629
def g1130_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1130) N
def g1131_lg : Lagrangian := fun t x dx => 5*dx*dx - 2*x*x
def g1132_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1133_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1134_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1135_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1136_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1137_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1138_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1139_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1140_s (a b : Scalar) : Scalar := a*a + b*b + 1140
def g1141_p (a : Scalar) : Prop := a > 641
def g1142_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1142) N
def g1143_lg : Lagrangian := fun t x dx => 3*dx*dx - 4*x*x
def g1144_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1145_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1146_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1147_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1148_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1149_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1150_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1151_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1152_s (a b : Scalar) : Scalar := a*a + b*b + 1152
def g1153_p (a : Scalar) : Prop := a > 653
def g1154_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1154) N
def g1155_lg : Lagrangian := fun t x dx => 1*dx*dx - 1*x*x
def g1156_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1157_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1158_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1159_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1160_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1161_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1162_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1163_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1164_s (a b : Scalar) : Scalar := a*a + b*b + 1164
def g1165_p (a : Scalar) : Prop := a > 665
def g1166_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1166) N
def g1167_lg : Lagrangian := fun t x dx => 6*dx*dx - 3*x*x
def g1168_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1169_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1170_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1171_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1172_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1173_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1174_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1175_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1176_s (a b : Scalar) : Scalar := a*a + b*b + 1176
def g1177_p (a : Scalar) : Prop := a > 677
def g1178_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1178) N
def g1179_lg : Lagrangian := fun t x dx => 4*dx*dx - 5*x*x
def g1180_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1181_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1182_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1183_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1184_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1185_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1186_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1187_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1188_s (a b : Scalar) : Scalar := a*a + b*b + 1188
def g1189_p (a : Scalar) : Prop := a > 689
def g1190_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1190) N
def g1191_lg : Lagrangian := fun t x dx => 2*dx*dx - 2*x*x
def g1192_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1193_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1194_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1195_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1196_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1197_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1198_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1199_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1200_s (a b : Scalar) : Scalar := a*a + b*b + 1200

#eval IO.println "File 4 loaded"