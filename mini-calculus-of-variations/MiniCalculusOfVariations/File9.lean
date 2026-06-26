-- Calculus of Variations -- File 9
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def g2401_p (a : Scalar) : Prop := a > 1901
def g2402_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2402) N
def g2403_lg : Lagrangian := fun t x dx => 3*dx*dx - 4*x*x
def g2404_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2405_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2406_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2407_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2408_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2409_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2410_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2411_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2412_s (a b : Scalar) : Scalar := a*a + b*b + 2412
def g2413_p (a : Scalar) : Prop := a > 1913
def g2414_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2414) N
def g2415_lg : Lagrangian := fun t x dx => 1*dx*dx - 1*x*x
def g2416_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2417_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2418_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2419_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2420_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2421_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2422_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2423_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2424_s (a b : Scalar) : Scalar := a*a + b*b + 2424
def g2425_p (a : Scalar) : Prop := a > 1925
def g2426_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2426) N
def g2427_lg : Lagrangian := fun t x dx => 6*dx*dx - 3*x*x
def g2428_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2429_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2430_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2431_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2432_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2433_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2434_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2435_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2436_s (a b : Scalar) : Scalar := a*a + b*b + 2436
def g2437_p (a : Scalar) : Prop := a > 1937
def g2438_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2438) N
def g2439_lg : Lagrangian := fun t x dx => 4*dx*dx - 5*x*x
def g2440_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2441_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2442_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2443_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2444_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2445_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2446_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2447_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2448_s (a b : Scalar) : Scalar := a*a + b*b + 2448
def g2449_p (a : Scalar) : Prop := a > 1949
def g2450_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2450) N
def g2451_lg : Lagrangian := fun t x dx => 2*dx*dx - 2*x*x
def g2452_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2453_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2454_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2455_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2456_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2457_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2458_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2459_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2460_s (a b : Scalar) : Scalar := a*a + b*b + 2460
def g2461_p (a : Scalar) : Prop := a > 1961
def g2462_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2462) N
def g2463_lg : Lagrangian := fun t x dx => 7*dx*dx - 4*x*x
def g2464_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2465_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2466_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2467_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2468_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2469_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2470_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2471_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2472_s (a b : Scalar) : Scalar := a*a + b*b + 2472
def g2473_p (a : Scalar) : Prop := a > 1973
def g2474_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2474) N
def g2475_lg : Lagrangian := fun t x dx => 5*dx*dx - 1*x*x
def g2476_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2477_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2478_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2479_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2480_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2481_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2482_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2483_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2484_s (a b : Scalar) : Scalar := a*a + b*b + 2484
def g2485_p (a : Scalar) : Prop := a > 1985
def g2486_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2486) N
def g2487_lg : Lagrangian := fun t x dx => 3*dx*dx - 3*x*x
def g2488_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2489_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2490_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2491_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2492_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2493_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2494_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2495_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2496_s (a b : Scalar) : Scalar := a*a + b*b + 2496
def g2497_p (a : Scalar) : Prop := a > 1997
def g2498_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2498) N
def g2499_lg : Lagrangian := fun t x dx => 1*dx*dx - 5*x*x
def g2500_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2501_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2502_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2503_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2504_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2505_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2506_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2507_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2508_s (a b : Scalar) : Scalar := a*a + b*b + 2508
def g2509_p (a : Scalar) : Prop := a > 2009
def g2510_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2510) N
def g2511_lg : Lagrangian := fun t x dx => 6*dx*dx - 2*x*x
def g2512_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2513_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2514_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2515_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2516_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2517_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2518_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2519_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2520_s (a b : Scalar) : Scalar := a*a + b*b + 2520
def g2521_p (a : Scalar) : Prop := a > 2021
def g2522_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2522) N
def g2523_lg : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x
def g2524_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2525_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2526_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2527_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2528_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2529_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2530_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2531_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2532_s (a b : Scalar) : Scalar := a*a + b*b + 2532
def g2533_p (a : Scalar) : Prop := a > 2033
def g2534_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2534) N
def g2535_lg : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x
def g2536_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2537_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2538_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2539_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2540_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2541_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2542_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2543_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2544_s (a b : Scalar) : Scalar := a*a + b*b + 2544
def g2545_p (a : Scalar) : Prop := a > 2045
def g2546_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2546) N
def g2547_lg : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x
def g2548_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2549_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2550_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2551_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2552_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2553_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2554_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2555_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2556_s (a b : Scalar) : Scalar := a*a + b*b + 2556
def g2557_p (a : Scalar) : Prop := a > 2057
def g2558_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2558) N
def g2559_lg : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x
def g2560_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2561_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2562_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2563_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2564_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2565_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2566_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2567_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2568_s (a b : Scalar) : Scalar := a*a + b*b + 2568
def g2569_p (a : Scalar) : Prop := a > 2069
def g2570_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2570) N
def g2571_lg : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x
def g2572_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2573_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2574_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2575_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2576_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2577_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2578_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2579_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2580_s (a b : Scalar) : Scalar := a*a + b*b + 2580
def g2581_p (a : Scalar) : Prop := a > 2081
def g2582_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2582) N
def g2583_lg : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x
def g2584_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2585_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2586_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2587_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2588_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2589_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2590_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2591_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2592_s (a b : Scalar) : Scalar := a*a + b*b + 2592
def g2593_p (a : Scalar) : Prop := a > 2093
def g2594_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2594) N
def g2595_lg : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x
def g2596_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2597_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2598_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2599_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2600_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2601_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2602_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2603_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2604_s (a b : Scalar) : Scalar := a*a + b*b + 2604
def g2605_p (a : Scalar) : Prop := a > 2105
def g2606_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2606) N
def g2607_lg : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x
def g2608_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2609_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2610_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2611_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2612_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2613_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2614_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2615_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2616_s (a b : Scalar) : Scalar := a*a + b*b + 2616
def g2617_p (a : Scalar) : Prop := a > 2117
def g2618_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2618) N
def g2619_lg : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x
def g2620_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2621_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2622_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2623_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2624_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2625_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2626_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2627_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2628_s (a b : Scalar) : Scalar := a*a + b*b + 2628
def g2629_p (a : Scalar) : Prop := a > 2129
def g2630_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2630) N
def g2631_lg : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x
def g2632_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2633_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2634_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2635_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2636_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2637_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2638_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2639_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2640_s (a b : Scalar) : Scalar := a*a + b*b + 2640
def g2641_p (a : Scalar) : Prop := a > 2141
def g2642_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2642) N
def g2643_lg : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x
def g2644_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2645_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2646_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2647_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2648_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2649_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2650_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2651_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2652_s (a b : Scalar) : Scalar := a*a + b*b + 2652
def g2653_p (a : Scalar) : Prop := a > 2153
def g2654_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2654) N
def g2655_lg : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x
def g2656_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2657_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2658_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2659_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2660_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2661_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2662_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2663_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2664_s (a b : Scalar) : Scalar := a*a + b*b + 2664
def g2665_p (a : Scalar) : Prop := a > 2165
def g2666_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2666) N
def g2667_lg : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x
def g2668_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2669_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2670_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2671_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2672_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2673_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2674_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2675_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2676_s (a b : Scalar) : Scalar := a*a + b*b + 2676
def g2677_p (a : Scalar) : Prop := a > 2177
def g2678_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2678) N
def g2679_lg : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x
def g2680_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2681_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2682_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2683_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2684_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2685_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2686_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2687_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2688_s (a b : Scalar) : Scalar := a*a + b*b + 2688
def g2689_p (a : Scalar) : Prop := a > 2189
def g2690_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2690) N
def g2691_lg : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x
def g2692_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2693_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2694_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2695_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2696_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2697_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2698_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2699_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2700_s (a b : Scalar) : Scalar := a*a + b*b + 2700

#eval IO.println "File 9 loaded"