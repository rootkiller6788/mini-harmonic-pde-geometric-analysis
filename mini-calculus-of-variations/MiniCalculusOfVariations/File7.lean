-- Calculus of Variations -- File 7
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def g1801_p (a : Scalar) : Prop := a > 1301
def g1802_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1802) N
def g1803_lg : Lagrangian := fun t x dx => 5*dx*dx - 4*x*x
def g1804_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1805_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1806_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1807_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1808_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1809_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1810_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1811_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1812_s (a b : Scalar) : Scalar := a*a + b*b + 1812
def g1813_p (a : Scalar) : Prop := a > 1313
def g1814_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1814) N
def g1815_lg : Lagrangian := fun t x dx => 3*dx*dx - 1*x*x
def g1816_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1817_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1818_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1819_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1820_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1821_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1822_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1823_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1824_s (a b : Scalar) : Scalar := a*a + b*b + 1824
def g1825_p (a : Scalar) : Prop := a > 1325
def g1826_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1826) N
def g1827_lg : Lagrangian := fun t x dx => 1*dx*dx - 3*x*x
def g1828_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1829_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1830_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1831_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1832_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1833_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1834_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1835_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1836_s (a b : Scalar) : Scalar := a*a + b*b + 1836
def g1837_p (a : Scalar) : Prop := a > 1337
def g1838_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1838) N
def g1839_lg : Lagrangian := fun t x dx => 6*dx*dx - 5*x*x
def g1840_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1841_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1842_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1843_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1844_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1845_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1846_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1847_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1848_s (a b : Scalar) : Scalar := a*a + b*b + 1848
def g1849_p (a : Scalar) : Prop := a > 1349
def g1850_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1850) N
def g1851_lg : Lagrangian := fun t x dx => 4*dx*dx - 2*x*x
def g1852_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1853_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1854_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1855_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1856_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1857_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1858_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1859_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1860_s (a b : Scalar) : Scalar := a*a + b*b + 1860
def g1861_p (a : Scalar) : Prop := a > 1361
def g1862_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1862) N
def g1863_lg : Lagrangian := fun t x dx => 2*dx*dx - 4*x*x
def g1864_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1865_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1866_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1867_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1868_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1869_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1870_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1871_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1872_s (a b : Scalar) : Scalar := a*a + b*b + 1872
def g1873_p (a : Scalar) : Prop := a > 1373
def g1874_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1874) N
def g1875_lg : Lagrangian := fun t x dx => 7*dx*dx - 1*x*x
def g1876_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1877_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1878_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1879_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1880_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1881_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1882_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1883_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1884_s (a b : Scalar) : Scalar := a*a + b*b + 1884
def g1885_p (a : Scalar) : Prop := a > 1385
def g1886_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1886) N
def g1887_lg : Lagrangian := fun t x dx => 5*dx*dx - 3*x*x
def g1888_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1889_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1890_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1891_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1892_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1893_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1894_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1895_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1896_s (a b : Scalar) : Scalar := a*a + b*b + 1896
def g1897_p (a : Scalar) : Prop := a > 1397
def g1898_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1898) N
def g1899_lg : Lagrangian := fun t x dx => 3*dx*dx - 5*x*x
def g1900_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1901_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1902_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1903_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1904_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1905_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1906_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1907_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1908_s (a b : Scalar) : Scalar := a*a + b*b + 1908
def g1909_p (a : Scalar) : Prop := a > 1409
def g1910_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1910) N
def g1911_lg : Lagrangian := fun t x dx => 1*dx*dx - 2*x*x
def g1912_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1913_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1914_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1915_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1916_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1917_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1918_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1919_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1920_s (a b : Scalar) : Scalar := a*a + b*b + 1920
def g1921_p (a : Scalar) : Prop := a > 1421
def g1922_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1922) N
def g1923_lg : Lagrangian := fun t x dx => 6*dx*dx - 4*x*x
def g1924_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1925_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1926_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1927_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1928_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1929_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1930_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1931_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1932_s (a b : Scalar) : Scalar := a*a + b*b + 1932
def g1933_p (a : Scalar) : Prop := a > 1433
def g1934_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1934) N
def g1935_lg : Lagrangian := fun t x dx => 4*dx*dx - 1*x*x
def g1936_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1937_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1938_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1939_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1940_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1941_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1942_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1943_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1944_s (a b : Scalar) : Scalar := a*a + b*b + 1944
def g1945_p (a : Scalar) : Prop := a > 1445
def g1946_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1946) N
def g1947_lg : Lagrangian := fun t x dx => 2*dx*dx - 3*x*x
def g1948_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1949_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1950_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1951_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1952_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1953_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1954_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1955_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1956_s (a b : Scalar) : Scalar := a*a + b*b + 1956
def g1957_p (a : Scalar) : Prop := a > 1457
def g1958_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1958) N
def g1959_lg : Lagrangian := fun t x dx => 7*dx*dx - 5*x*x
def g1960_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1961_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1962_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1963_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1964_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1965_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1966_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1967_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1968_s (a b : Scalar) : Scalar := a*a + b*b + 1968
def g1969_p (a : Scalar) : Prop := a > 1469
def g1970_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1970) N
def g1971_lg : Lagrangian := fun t x dx => 5*dx*dx - 2*x*x
def g1972_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1973_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1974_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1975_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1976_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1977_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1978_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1979_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1980_s (a b : Scalar) : Scalar := a*a + b*b + 1980
def g1981_p (a : Scalar) : Prop := a > 1481
def g1982_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1982) N
def g1983_lg : Lagrangian := fun t x dx => 3*dx*dx - 4*x*x
def g1984_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1985_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1986_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1987_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1988_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1989_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1990_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1991_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1992_s (a b : Scalar) : Scalar := a*a + b*b + 1992
def g1993_p (a : Scalar) : Prop := a > 1493
def g1994_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1994) N
def g1995_lg : Lagrangian := fun t x dx => 1*dx*dx - 1*x*x
def g1996_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1997_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1998_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1999_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2000_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2001_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2002_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2003_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2004_s (a b : Scalar) : Scalar := a*a + b*b + 2004
def g2005_p (a : Scalar) : Prop := a > 1505
def g2006_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2006) N
def g2007_lg : Lagrangian := fun t x dx => 6*dx*dx - 3*x*x
def g2008_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2009_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2010_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2011_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2012_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2013_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2014_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2015_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2016_s (a b : Scalar) : Scalar := a*a + b*b + 2016
def g2017_p (a : Scalar) : Prop := a > 1517
def g2018_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2018) N
def g2019_lg : Lagrangian := fun t x dx => 4*dx*dx - 5*x*x
def g2020_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2021_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2022_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2023_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2024_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2025_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2026_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2027_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2028_s (a b : Scalar) : Scalar := a*a + b*b + 2028
def g2029_p (a : Scalar) : Prop := a > 1529
def g2030_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2030) N
def g2031_lg : Lagrangian := fun t x dx => 2*dx*dx - 2*x*x
def g2032_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2033_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2034_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2035_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2036_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2037_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2038_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2039_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2040_s (a b : Scalar) : Scalar := a*a + b*b + 2040
def g2041_p (a : Scalar) : Prop := a > 1541
def g2042_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2042) N
def g2043_lg : Lagrangian := fun t x dx => 7*dx*dx - 4*x*x
def g2044_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g2045_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2046_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2047_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2048_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g2049_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2050_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g2051_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2052_s (a b : Scalar) : Scalar := a*a + b*b + 2052
def g2053_p (a : Scalar) : Prop := a > 1553
def g2054_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2054) N
def g2055_lg : Lagrangian := fun t x dx => 5*dx*dx - 1*x*x
def g2056_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g2057_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2058_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2059_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2060_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g2061_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2062_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g2063_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2064_s (a b : Scalar) : Scalar := a*a + b*b + 2064
def g2065_p (a : Scalar) : Prop := a > 1565
def g2066_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2066) N
def g2067_lg : Lagrangian := fun t x dx => 3*dx*dx - 3*x*x
def g2068_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g2069_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2070_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2071_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2072_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g2073_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2074_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g2075_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2076_s (a b : Scalar) : Scalar := a*a + b*b + 2076
def g2077_p (a : Scalar) : Prop := a > 1577
def g2078_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2078) N
def g2079_lg : Lagrangian := fun t x dx => 1*dx*dx - 5*x*x
def g2080_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g2081_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2082_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2083_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2084_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g2085_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2086_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g2087_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2088_s (a b : Scalar) : Scalar := a*a + b*b + 2088
def g2089_p (a : Scalar) : Prop := a > 1589
def g2090_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 2090) N
def g2091_lg : Lagrangian := fun t x dx => 6*dx*dx - 2*x*x
def g2092_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g2093_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g2094_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g2095_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g2096_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g2097_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g2098_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g2099_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g2100_s (a b : Scalar) : Scalar := a*a + b*b + 2100

#eval IO.println "File 7 loaded"