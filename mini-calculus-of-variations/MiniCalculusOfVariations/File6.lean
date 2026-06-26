-- Calculus of Variations -- File 6
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def g1501_p (a : Scalar) : Prop := a > 1001
def g1502_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1502) N
def g1503_lg : Lagrangian := fun t x dx => 6*dx*dx - 4*x*x
def g1504_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1505_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1506_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1507_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1508_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1509_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1510_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1511_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1512_s (a b : Scalar) : Scalar := a*a + b*b + 1512
def g1513_p (a : Scalar) : Prop := a > 1013
def g1514_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1514) N
def g1515_lg : Lagrangian := fun t x dx => 4*dx*dx - 1*x*x
def g1516_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1517_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1518_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1519_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1520_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1521_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1522_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1523_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1524_s (a b : Scalar) : Scalar := a*a + b*b + 1524
def g1525_p (a : Scalar) : Prop := a > 1025
def g1526_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1526) N
def g1527_lg : Lagrangian := fun t x dx => 2*dx*dx - 3*x*x
def g1528_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1529_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1530_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1531_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1532_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1533_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1534_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1535_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1536_s (a b : Scalar) : Scalar := a*a + b*b + 1536
def g1537_p (a : Scalar) : Prop := a > 1037
def g1538_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1538) N
def g1539_lg : Lagrangian := fun t x dx => 7*dx*dx - 5*x*x
def g1540_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1541_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1542_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1543_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1544_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1545_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1546_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1547_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1548_s (a b : Scalar) : Scalar := a*a + b*b + 1548
def g1549_p (a : Scalar) : Prop := a > 1049
def g1550_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1550) N
def g1551_lg : Lagrangian := fun t x dx => 5*dx*dx - 2*x*x
def g1552_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1553_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1554_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1555_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1556_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1557_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1558_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1559_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1560_s (a b : Scalar) : Scalar := a*a + b*b + 1560
def g1561_p (a : Scalar) : Prop := a > 1061
def g1562_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1562) N
def g1563_lg : Lagrangian := fun t x dx => 3*dx*dx - 4*x*x
def g1564_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1565_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1566_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1567_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1568_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1569_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1570_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1571_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1572_s (a b : Scalar) : Scalar := a*a + b*b + 1572
def g1573_p (a : Scalar) : Prop := a > 1073
def g1574_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1574) N
def g1575_lg : Lagrangian := fun t x dx => 1*dx*dx - 1*x*x
def g1576_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1577_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1578_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1579_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1580_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1581_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1582_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1583_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1584_s (a b : Scalar) : Scalar := a*a + b*b + 1584
def g1585_p (a : Scalar) : Prop := a > 1085
def g1586_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1586) N
def g1587_lg : Lagrangian := fun t x dx => 6*dx*dx - 3*x*x
def g1588_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1589_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1590_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1591_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1592_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1593_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1594_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1595_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1596_s (a b : Scalar) : Scalar := a*a + b*b + 1596
def g1597_p (a : Scalar) : Prop := a > 1097
def g1598_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1598) N
def g1599_lg : Lagrangian := fun t x dx => 4*dx*dx - 5*x*x
def g1600_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1601_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1602_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1603_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1604_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1605_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1606_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1607_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1608_s (a b : Scalar) : Scalar := a*a + b*b + 1608
def g1609_p (a : Scalar) : Prop := a > 1109
def g1610_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1610) N
def g1611_lg : Lagrangian := fun t x dx => 2*dx*dx - 2*x*x
def g1612_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1613_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1614_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1615_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1616_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1617_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1618_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1619_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1620_s (a b : Scalar) : Scalar := a*a + b*b + 1620
def g1621_p (a : Scalar) : Prop := a > 1121
def g1622_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1622) N
def g1623_lg : Lagrangian := fun t x dx => 7*dx*dx - 4*x*x
def g1624_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1625_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1626_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1627_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1628_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1629_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1630_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1631_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1632_s (a b : Scalar) : Scalar := a*a + b*b + 1632
def g1633_p (a : Scalar) : Prop := a > 1133
def g1634_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1634) N
def g1635_lg : Lagrangian := fun t x dx => 5*dx*dx - 1*x*x
def g1636_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1637_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1638_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1639_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1640_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1641_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1642_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1643_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1644_s (a b : Scalar) : Scalar := a*a + b*b + 1644
def g1645_p (a : Scalar) : Prop := a > 1145
def g1646_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1646) N
def g1647_lg : Lagrangian := fun t x dx => 3*dx*dx - 3*x*x
def g1648_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1649_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1650_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1651_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1652_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1653_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1654_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1655_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1656_s (a b : Scalar) : Scalar := a*a + b*b + 1656
def g1657_p (a : Scalar) : Prop := a > 1157
def g1658_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1658) N
def g1659_lg : Lagrangian := fun t x dx => 1*dx*dx - 5*x*x
def g1660_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1661_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1662_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1663_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1664_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1665_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1666_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1667_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1668_s (a b : Scalar) : Scalar := a*a + b*b + 1668
def g1669_p (a : Scalar) : Prop := a > 1169
def g1670_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1670) N
def g1671_lg : Lagrangian := fun t x dx => 6*dx*dx - 2*x*x
def g1672_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1673_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1674_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1675_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1676_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1677_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1678_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1679_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1680_s (a b : Scalar) : Scalar := a*a + b*b + 1680
def g1681_p (a : Scalar) : Prop := a > 1181
def g1682_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1682) N
def g1683_lg : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x
def g1684_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1685_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1686_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1687_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1688_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1689_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1690_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1691_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1692_s (a b : Scalar) : Scalar := a*a + b*b + 1692
def g1693_p (a : Scalar) : Prop := a > 1193
def g1694_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1694) N
def g1695_lg : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x
def g1696_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1697_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1698_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1699_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1700_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1701_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1702_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1703_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1704_s (a b : Scalar) : Scalar := a*a + b*b + 1704
def g1705_p (a : Scalar) : Prop := a > 1205
def g1706_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1706) N
def g1707_lg : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x
def g1708_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1709_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1710_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1711_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1712_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1713_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1714_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1715_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1716_s (a b : Scalar) : Scalar := a*a + b*b + 1716
def g1717_p (a : Scalar) : Prop := a > 1217
def g1718_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1718) N
def g1719_lg : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x
def g1720_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1721_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1722_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1723_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1724_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1725_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1726_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1727_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1728_s (a b : Scalar) : Scalar := a*a + b*b + 1728
def g1729_p (a : Scalar) : Prop := a > 1229
def g1730_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1730) N
def g1731_lg : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x
def g1732_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1733_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1734_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1735_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1736_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1737_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1738_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1739_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1740_s (a b : Scalar) : Scalar := a*a + b*b + 1740
def g1741_p (a : Scalar) : Prop := a > 1241
def g1742_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1742) N
def g1743_lg : Lagrangian := fun t x dx => 1*dx*dx - 4*x*x
def g1744_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*totalVariation x N
def g1745_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1746_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1747_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1748_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 8
def g1749_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1750_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 0
def g1751_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1752_s (a b : Scalar) : Scalar := a*a + b*b + 1752
def g1753_p (a : Scalar) : Prop := a > 1253
def g1754_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1754) N
def g1755_lg : Lagrangian := fun t x dx => 6*dx*dx - 1*x*x
def g1756_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*totalVariation x N
def g1757_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1758_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1759_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1760_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 0
def g1761_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1762_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 2
def g1763_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1764_s (a b : Scalar) : Scalar := a*a + b*b + 1764
def g1765_p (a : Scalar) : Prop := a > 1265
def g1766_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1766) N
def g1767_lg : Lagrangian := fun t x dx => 4*dx*dx - 3*x*x
def g1768_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*totalVariation x N
def g1769_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1770_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1771_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1772_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 2
def g1773_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1774_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 4
def g1775_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1776_s (a b : Scalar) : Scalar := a*a + b*b + 1776
def g1777_p (a : Scalar) : Prop := a > 1277
def g1778_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1778) N
def g1779_lg : Lagrangian := fun t x dx => 2*dx*dx - 5*x*x
def g1780_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*totalVariation x N
def g1781_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1782_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1783_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1784_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 4
def g1785_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1786_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 1
def g1787_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1788_s (a b : Scalar) : Scalar := a*a + b*b + 1788
def g1789_p (a : Scalar) : Prop := a > 1289
def g1790_sq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 1790) N
def g1791_lg : Lagrangian := fun t x dx => 7*dx*dx - 2*x*x
def g1792_nm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*totalVariation x N
def g1793_en (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x=>x*x) x i
def g1794_ac (p : FixedPath) : Scalar := discreteAction freeLagrangian p / 1
def g1795_el (p : FixedPath) (j : Nat) : Scalar := elResidual (harmonicLagrangian 2) p j
def g1796_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N + 6
def g1797_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N * 1
def g1798_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N + 3
def g1799_st (x lam : Scalar) : Scalar := softThreshold x lam * 2
def g1800_s (a b : Scalar) : Scalar := a*a + b*b + 1800

#eval IO.println "File 6 loaded"