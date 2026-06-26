-- Calculus of Variations -- File 5
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def g1201_p (a : Scalar) : Prop := a > 701
def g1202_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1202) N
def g1203_lg : Lagrangian := fun t x dx => 7*dx*dx - 4*x*x
def g1204_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1205_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1206_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1207_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1208_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1209_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1210_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1211_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1212_s (a b : Scalar) : Scalar := a*a + b*b + 1212
def g1213_p (a : Scalar) : Prop := a > 713
def g1214_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1214) N
def g1215_lg : Lagrangian := fun t x dx => 5*dx*dx - 1*x*x
def g1216_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1217_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1218_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1219_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1220_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1221_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1222_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1223_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1224_s (a b : Scalar) : Scalar := a*a + b*b + 1224
def g1225_p (a : Scalar) : Prop := a > 725
def g1226_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1226) N
def g1227_lg : Lagrangian := fun t x dx => 3*dx*dx - 3*x*x
def g1228_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1229_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1230_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1231_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1232_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1233_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1234_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1235_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1236_s (a b : Scalar) : Scalar := a*a + b*b + 1236
def g1237_p (a : Scalar) : Prop := a > 737
def g1238_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1238) N
def g1239_lg : Lagrangian := fun t x dx => 1*dx*dx - 5*x*x
def g1240_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1241_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1242_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1243_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1244_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1245_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1246_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1247_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1248_s (a b : Scalar) : Scalar := a*a + b*b + 1248
def g1249_p (a : Scalar) : Prop := a > 749
def g1250_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1250) N
def g1251_lg : Lagrangian := fun t x dx => 6*dx*dx - 2*x*x
def g1252_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1253_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1254_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1255_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1256_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1257_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1258_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1259_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1260_s (a b : Scalar) : Scalar := a*a + b*b + 1260
def g1261_p (a : Scalar) : Prop := a > 761
def g1262_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1262) N
def g1263_lg : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x
def g1264_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1265_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1266_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1267_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1268_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1269_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1270_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1271_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1272_s (a b : Scalar) : Scalar := a*a + b*b + 1272
def g1273_p (a : Scalar) : Prop := a > 773
def g1274_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1274) N
def g1275_lg : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x
def g1276_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1277_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1278_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1279_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1280_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1281_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1282_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1283_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1284_s (a b : Scalar) : Scalar := a*a + b*b + 1284
def g1285_p (a : Scalar) : Prop := a > 785
def g1286_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1286) N
def g1287_lg : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x
def g1288_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1289_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1290_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1291_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1292_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1293_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1294_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1295_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1296_s (a b : Scalar) : Scalar := a*a + b*b + 1296
def g1297_p (a : Scalar) : Prop := a > 797
def g1298_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1298) N
def g1299_lg : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x
def g1300_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1301_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1302_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1303_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1304_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1305_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1306_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1307_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1308_s (a b : Scalar) : Scalar := a*a + b*b + 1308
def g1309_p (a : Scalar) : Prop := a > 809
def g1310_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1310) N
def g1311_lg : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x
def g1312_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1313_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1314_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1315_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1316_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1317_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1318_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1319_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1320_s (a b : Scalar) : Scalar := a*a + b*b + 1320
def g1321_p (a : Scalar) : Prop := a > 821
def g1322_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1322) N
def g1323_lg : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x
def g1324_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1325_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1326_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1327_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1328_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1329_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1330_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1331_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1332_s (a b : Scalar) : Scalar := a*a + b*b + 1332
def g1333_p (a : Scalar) : Prop := a > 833
def g1334_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1334) N
def g1335_lg : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x
def g1336_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1337_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1338_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1339_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1340_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1341_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1342_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1343_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1344_s (a b : Scalar) : Scalar := a*a + b*b + 1344
def g1345_p (a : Scalar) : Prop := a > 845
def g1346_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1346) N
def g1347_lg : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x
def g1348_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1349_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1350_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1351_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1352_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1353_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1354_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1355_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1356_s (a b : Scalar) : Scalar := a*a + b*b + 1356
def g1357_p (a : Scalar) : Prop := a > 857
def g1358_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1358) N
def g1359_lg : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x
def g1360_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1361_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1362_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1363_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1364_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1365_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1366_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1367_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1368_s (a b : Scalar) : Scalar := a*a + b*b + 1368
def g1369_p (a : Scalar) : Prop := a > 869
def g1370_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1370) N
def g1371_lg : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x
def g1372_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1373_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1374_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1375_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1376_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1377_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1378_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1379_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1380_s (a b : Scalar) : Scalar := a*a + b*b + 1380
def g1381_p (a : Scalar) : Prop := a > 881
def g1382_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1382) N
def g1383_lg : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x
def g1384_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1385_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1386_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1387_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1388_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1389_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1390_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1391_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1392_s (a b : Scalar) : Scalar := a*a + b*b + 1392
def g1393_p (a : Scalar) : Prop := a > 893
def g1394_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1394) N
def g1395_lg : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x
def g1396_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1397_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1398_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1399_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1400_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1401_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1402_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1403_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1404_s (a b : Scalar) : Scalar := a*a + b*b + 1404
def g1405_p (a : Scalar) : Prop := a > 905
def g1406_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1406) N
def g1407_lg : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x
def g1408_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1409_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1410_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1411_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1412_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1413_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1414_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1415_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1416_s (a b : Scalar) : Scalar := a*a + b*b + 1416
def g1417_p (a : Scalar) : Prop := a > 917
def g1418_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1418) N
def g1419_lg : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x
def g1420_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1421_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1422_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1423_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1424_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1425_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1426_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1427_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1428_s (a b : Scalar) : Scalar := a*a + b*b + 1428
def g1429_p (a : Scalar) : Prop := a > 929
def g1430_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1430) N
def g1431_lg : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x
def g1432_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1433_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1434_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1435_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1436_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1437_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1438_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1439_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1440_s (a b : Scalar) : Scalar := a*a + b*b + 1440
def g1441_p (a : Scalar) : Prop := a > 941
def g1442_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1442) N
def g1443_lg : Lagrangian := fun t x dx => 2*dx*dx - 4*x*x
def g1444_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1445_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1446_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1447_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1448_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1449_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1450_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1451_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1452_s (a b : Scalar) : Scalar := a*a + b*b + 1452
def g1453_p (a : Scalar) : Prop := a > 953
def g1454_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1454) N
def g1455_lg : Lagrangian := fun t x dx => 7*dx*dx - 1*x*x
def g1456_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1457_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1458_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1459_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1460_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1461_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1462_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1463_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1464_s (a b : Scalar) : Scalar := a*a + b*b + 1464
def g1465_p (a : Scalar) : Prop := a > 965
def g1466_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1466) N
def g1467_lg : Lagrangian := fun t x dx => 5*dx*dx - 3*x*x
def g1468_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1469_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1470_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1471_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1472_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1473_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1474_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1475_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1476_s (a b : Scalar) : Scalar := a*a + b*b + 1476
def g1477_p (a : Scalar) : Prop := a > 977
def g1478_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1478) N
def g1479_lg : Lagrangian := fun t x dx => 3*dx*dx - 5*x*x
def g1480_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1481_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1482_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1483_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1484_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1485_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1486_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1487_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1488_s (a b : Scalar) : Scalar := a*a + b*b + 1488
def g1489_p (a : Scalar) : Prop := a > 989
def g1490_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1490) N
def g1491_lg : Lagrangian := fun t x dx => 1*dx*dx - 2*x*x
def g1492_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1493_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1494_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1495_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1496_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1497_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1498_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1499_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1500_s (a b : Scalar) : Scalar := a*a + b*b + 1500

#eval IO.println "File 5 loaded"