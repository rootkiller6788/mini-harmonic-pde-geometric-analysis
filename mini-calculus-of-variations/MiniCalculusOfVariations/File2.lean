-- Calculus of Variations -- File 2
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def f301_pred (a : Scalar) : Prop := a > -199
def f302_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 302) N
def f303_lag : Lagrangian := fun t x dx => 3*dx*dx - 4*x*x + 0
def f304_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f305_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f306_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f307_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f308_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f309_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f310_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f311_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f312_scalar (a b : Scalar) : Scalar := a*a + b*b + 312
def f313_pred (a : Scalar) : Prop := a > -187
def f314_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 314) N
def f315_lag : Lagrangian := fun t x dx => 1*dx*dx - 1*x*x + 0
def f316_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f317_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f318_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f319_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f320_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f321_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f322_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f323_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f324_scalar (a b : Scalar) : Scalar := a*a + b*b + 324
def f325_pred (a : Scalar) : Prop := a > -175
def f326_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 326) N
def f327_lag : Lagrangian := fun t x dx => 6*dx*dx - 3*x*x + 0
def f328_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f329_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f330_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f331_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f332_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f333_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f334_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f335_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f336_scalar (a b : Scalar) : Scalar := a*a + b*b + 336
def f337_pred (a : Scalar) : Prop := a > -163
def f338_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 338) N
def f339_lag : Lagrangian := fun t x dx => 4*dx*dx - 5*x*x + 0
def f340_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f341_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f342_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f343_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f344_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f345_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f346_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f347_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f348_scalar (a b : Scalar) : Scalar := a*a + b*b + 348
def f349_pred (a : Scalar) : Prop := a > -151
def f350_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 350) N
def f351_lag : Lagrangian := fun t x dx => 2*dx*dx - 2*x*x + 0
def f352_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f353_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f354_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f355_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f356_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f357_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f358_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f359_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f360_scalar (a b : Scalar) : Scalar := a*a + b*b + 360
def f361_pred (a : Scalar) : Prop := a > -139
def f362_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 362) N
def f363_lag : Lagrangian := fun t x dx => 7*dx*dx - 4*x*x + 0
def f364_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f365_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f366_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f367_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f368_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f369_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f370_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f371_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f372_scalar (a b : Scalar) : Scalar := a*a + b*b + 372
def f373_pred (a : Scalar) : Prop := a > -127
def f374_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 374) N
def f375_lag : Lagrangian := fun t x dx => 5*dx*dx - 1*x*x + 0
def f376_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f377_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f378_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f379_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f380_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f381_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f382_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f383_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f384_scalar (a b : Scalar) : Scalar := a*a + b*b + 384
def f385_pred (a : Scalar) : Prop := a > -115
def f386_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 386) N
def f387_lag : Lagrangian := fun t x dx => 3*dx*dx - 3*x*x + 0
def f388_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f389_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f390_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f391_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f392_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f393_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f394_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f395_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f396_scalar (a b : Scalar) : Scalar := a*a + b*b + 396
def f397_pred (a : Scalar) : Prop := a > -103
def f398_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 398) N
def f399_lag : Lagrangian := fun t x dx => 1*dx*dx - 5*x*x + 0
def f400_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f401_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f402_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f403_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f404_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f405_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f406_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f407_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f408_scalar (a b : Scalar) : Scalar := a*a + b*b + 408
def f409_pred (a : Scalar) : Prop := a > -91
def f410_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 410) N
def f411_lag : Lagrangian := fun t x dx => 6*dx*dx - 2*x*x + 0
def f412_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f413_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f414_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f415_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f416_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f417_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f418_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f419_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f420_scalar (a b : Scalar) : Scalar := a*a + b*b + 420
def f421_pred (a : Scalar) : Prop := a > -79
def f422_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 422) N
def f423_lag : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x + 0
def f424_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f425_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f426_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f427_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f428_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f429_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f430_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f431_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f432_scalar (a b : Scalar) : Scalar := a*a + b*b + 432
def f433_pred (a : Scalar) : Prop := a > -67
def f434_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 434) N
def f435_lag : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x + 0
def f436_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f437_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f438_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f439_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f440_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f441_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f442_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f443_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f444_scalar (a b : Scalar) : Scalar := a*a + b*b + 444
def f445_pred (a : Scalar) : Prop := a > -55
def f446_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 446) N
def f447_lag : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x + 0
def f448_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f449_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f450_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f451_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f452_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f453_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f454_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f455_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f456_scalar (a b : Scalar) : Scalar := a*a + b*b + 456
def f457_pred (a : Scalar) : Prop := a > -43
def f458_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 458) N
def f459_lag : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x + 0
def f460_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f461_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f462_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f463_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f464_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f465_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f466_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f467_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f468_scalar (a b : Scalar) : Scalar := a*a + b*b + 468
def f469_pred (a : Scalar) : Prop := a > -31
def f470_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 470) N
def f471_lag : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x + 0
def f472_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f473_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f474_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f475_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f476_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f477_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f478_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f479_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f480_scalar (a b : Scalar) : Scalar := a*a + b*b + 480
def f481_pred (a : Scalar) : Prop := a > -19
def f482_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 482) N
def f483_lag : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x + 0
def f484_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f485_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f486_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f487_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f488_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f489_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f490_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f491_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f492_scalar (a b : Scalar) : Scalar := a*a + b*b + 492
def f493_pred (a : Scalar) : Prop := a > -7
def f494_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 494) N
def f495_lag : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x + 0
def f496_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f497_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f498_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f499_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f500_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f501_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f502_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f503_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f504_scalar (a b : Scalar) : Scalar := a*a + b*b + 504
def f505_pred (a : Scalar) : Prop := a > 5
def f506_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 506) N
def f507_lag : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x + 0
def f508_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f509_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f510_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f511_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f512_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f513_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f514_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f515_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f516_scalar (a b : Scalar) : Scalar := a*a + b*b + 516
def f517_pred (a : Scalar) : Prop := a > 17
def f518_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 518) N
def f519_lag : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x + 0
def f520_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f521_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f522_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f523_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f524_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f525_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f526_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f527_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f528_scalar (a b : Scalar) : Scalar := a*a + b*b + 528
def f529_pred (a : Scalar) : Prop := a > 29
def f530_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 530) N
def f531_lag : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x + 0
def f532_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f533_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f534_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f535_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f536_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f537_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f538_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f539_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f540_scalar (a b : Scalar) : Scalar := a*a + b*b + 540
def f541_pred (a : Scalar) : Prop := a > 41
def f542_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 542) N
def f543_lag : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x + 0
def f544_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f545_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f546_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f547_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f548_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f549_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f550_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f551_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f552_scalar (a b : Scalar) : Scalar := a*a + b*b + 552
def f553_pred (a : Scalar) : Prop := a > 53
def f554_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 554) N
def f555_lag : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x + 0
def f556_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f557_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f558_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f559_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f560_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f561_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f562_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f563_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f564_scalar (a b : Scalar) : Scalar := a*a + b*b + 564
def f565_pred (a : Scalar) : Prop := a > 65
def f566_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 566) N
def f567_lag : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x + 0
def f568_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f569_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f570_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f571_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f572_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f573_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f574_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f575_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f576_scalar (a b : Scalar) : Scalar := a*a + b*b + 576
def f577_pred (a : Scalar) : Prop := a > 77
def f578_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 578) N
def f579_lag : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x + 0
def f580_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f581_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f582_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f583_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f584_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f585_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f586_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f587_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f588_scalar (a b : Scalar) : Scalar := a*a + b*b + 588
def f589_pred (a : Scalar) : Prop := a > 89
def f590_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 590) N
def f591_lag : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x + 0
def f592_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f593_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f594_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f595_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f596_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f597_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f598_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f599_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f600_scalar (a b : Scalar) : Scalar := a*a + b*b + 600

#eval IO.println "File 2 definitions loaded"