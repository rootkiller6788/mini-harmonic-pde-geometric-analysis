-- Calculus of Variations -- File 8
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def g2101_p (a : Scalar) : Prop := a > 1601
def g2102_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2102) N
def g2103_lg : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x
def g2104_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2105_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2106_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2107_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2108_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2109_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2110_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2111_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2112_s (a b : Scalar) : Scalar := a*a + b*b + 2112
def g2113_p (a : Scalar) : Prop := a > 1613
def g2114_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2114) N
def g2115_lg : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x
def g2116_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2117_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2118_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2119_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2120_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2121_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2122_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2123_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2124_s (a b : Scalar) : Scalar := a*a + b*b + 2124
def g2125_p (a : Scalar) : Prop := a > 1625
def g2126_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2126) N
def g2127_lg : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x
def g2128_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2129_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2130_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2131_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2132_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2133_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2134_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2135_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2136_s (a b : Scalar) : Scalar := a*a + b*b + 2136
def g2137_p (a : Scalar) : Prop := a > 1637
def g2138_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2138) N
def g2139_lg : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x
def g2140_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2141_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2142_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2143_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2144_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2145_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2146_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2147_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2148_s (a b : Scalar) : Scalar := a*a + b*b + 2148
def g2149_p (a : Scalar) : Prop := a > 1649
def g2150_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2150) N
def g2151_lg : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x
def g2152_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2153_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2154_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2155_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2156_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2157_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2158_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2159_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2160_s (a b : Scalar) : Scalar := a*a + b*b + 2160
def g2161_p (a : Scalar) : Prop := a > 1661
def g2162_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2162) N
def g2163_lg : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x
def g2164_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2165_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2166_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2167_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2168_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2169_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2170_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2171_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2172_s (a b : Scalar) : Scalar := a*a + b*b + 2172
def g2173_p (a : Scalar) : Prop := a > 1673
def g2174_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2174) N
def g2175_lg : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x
def g2176_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2177_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2178_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2179_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2180_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2181_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2182_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2183_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2184_s (a b : Scalar) : Scalar := a*a + b*b + 2184
def g2185_p (a : Scalar) : Prop := a > 1685
def g2186_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2186) N
def g2187_lg : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x
def g2188_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2189_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2190_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2191_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2192_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2193_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2194_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2195_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2196_s (a b : Scalar) : Scalar := a*a + b*b + 2196
def g2197_p (a : Scalar) : Prop := a > 1697
def g2198_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2198) N
def g2199_lg : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x
def g2200_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2201_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2202_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2203_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2204_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2205_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2206_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2207_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2208_s (a b : Scalar) : Scalar := a*a + b*b + 2208
def g2209_p (a : Scalar) : Prop := a > 1709
def g2210_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2210) N
def g2211_lg : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x
def g2212_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2213_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2214_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2215_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2216_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2217_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2218_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2219_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2220_s (a b : Scalar) : Scalar := a*a + b*b + 2220
def g2221_p (a : Scalar) : Prop := a > 1721
def g2222_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2222) N
def g2223_lg : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x
def g2224_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2225_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2226_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2227_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2228_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2229_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2230_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2231_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2232_s (a b : Scalar) : Scalar := a*a + b*b + 2232
def g2233_p (a : Scalar) : Prop := a > 1733
def g2234_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2234) N
def g2235_lg : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x
def g2236_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2237_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2238_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2239_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2240_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2241_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2242_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2243_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2244_s (a b : Scalar) : Scalar := a*a + b*b + 2244
def g2245_p (a : Scalar) : Prop := a > 1745
def g2246_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2246) N
def g2247_lg : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x
def g2248_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2249_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2250_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2251_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2252_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2253_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2254_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2255_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2256_s (a b : Scalar) : Scalar := a*a + b*b + 2256
def g2257_p (a : Scalar) : Prop := a > 1757
def g2258_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2258) N
def g2259_lg : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x
def g2260_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2261_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2262_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2263_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2264_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2265_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2266_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2267_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2268_s (a b : Scalar) : Scalar := a*a + b*b + 2268
def g2269_p (a : Scalar) : Prop := a > 1769
def g2270_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2270) N
def g2271_lg : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x
def g2272_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2273_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2274_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2275_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2276_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2277_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2278_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2279_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2280_s (a b : Scalar) : Scalar := a*a + b*b + 2280
def g2281_p (a : Scalar) : Prop := a > 1781
def g2282_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2282) N
def g2283_lg : Lagrangian := fun t x dx => 2*dx*dx - 4*x*x
def g2284_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2285_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2286_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2287_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2288_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2289_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2290_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2291_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2292_s (a b : Scalar) : Scalar := a*a + b*b + 2292
def g2293_p (a : Scalar) : Prop := a > 1793
def g2294_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2294) N
def g2295_lg : Lagrangian := fun t x dx => 7*dx*dx - 1*x*x
def g2296_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2297_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2298_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2299_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2300_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2301_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2302_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2303_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2304_s (a b : Scalar) : Scalar := a*a + b*b + 2304
def g2305_p (a : Scalar) : Prop := a > 1805
def g2306_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2306) N
def g2307_lg : Lagrangian := fun t x dx => 5*dx*dx - 3*x*x
def g2308_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2309_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2310_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2311_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2312_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2313_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2314_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2315_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2316_s (a b : Scalar) : Scalar := a*a + b*b + 2316
def g2317_p (a : Scalar) : Prop := a > 1817
def g2318_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2318) N
def g2319_lg : Lagrangian := fun t x dx => 3*dx*dx - 5*x*x
def g2320_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2321_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2322_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2323_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2324_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2325_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2326_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2327_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2328_s (a b : Scalar) : Scalar := a*a + b*b + 2328
def g2329_p (a : Scalar) : Prop := a > 1829
def g2330_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2330) N
def g2331_lg : Lagrangian := fun t x dx => 1*dx*dx - 2*x*x
def g2332_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2333_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2334_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2335_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2336_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2337_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2338_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2339_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2340_s (a b : Scalar) : Scalar := a*a + b*b + 2340
def g2341_p (a : Scalar) : Prop := a > 1841
def g2342_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2342) N
def g2343_lg : Lagrangian := fun t x dx => 6*dx*dx - 4*x*x
def g2344_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2345_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2346_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2347_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2348_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2349_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2350_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2351_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2352_s (a b : Scalar) : Scalar := a*a + b*b + 2352
def g2353_p (a : Scalar) : Prop := a > 1853
def g2354_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2354) N
def g2355_lg : Lagrangian := fun t x dx => 4*dx*dx - 1*x*x
def g2356_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2357_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2358_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2359_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2360_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2361_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2362_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2363_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2364_s (a b : Scalar) : Scalar := a*a + b*b + 2364
def g2365_p (a : Scalar) : Prop := a > 1865
def g2366_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2366) N
def g2367_lg : Lagrangian := fun t x dx => 2*dx*dx - 3*x*x
def g2368_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2369_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2370_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2371_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2372_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2373_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2374_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2375_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2376_s (a b : Scalar) : Scalar := a*a + b*b + 2376
def g2377_p (a : Scalar) : Prop := a > 1877
def g2378_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2378) N
def g2379_lg : Lagrangian := fun t x dx => 7*dx*dx - 5*x*x
def g2380_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2381_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2382_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2383_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2384_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2385_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2386_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2387_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2388_s (a b : Scalar) : Scalar := a*a + b*b + 2388
def g2389_p (a : Scalar) : Prop := a > 1889
def g2390_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2390) N
def g2391_lg : Lagrangian := fun t x dx => 5*dx*dx - 2*x*x
def g2392_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2393_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2394_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2395_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2396_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2397_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2398_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2399_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2400_s (a b : Scalar) : Scalar := a*a + b*b + 2400

#eval IO.println "File 8 loaded"