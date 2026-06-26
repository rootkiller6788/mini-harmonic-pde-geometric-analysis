-- Calculus of Variations -- File 3
-- Additional definitions using Core

import MiniCalculusOfVariations.Core

open MiniCalculusOfVariations

def f601_pred (a : Scalar) : Prop := a > 101
def f602_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 602) N
def f603_lag : Lagrangian := fun t x dx => 2*dx*dx - 4*x*x + 0
def f604_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f605_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f606_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f607_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f608_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f609_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f610_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f611_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f612_scalar (a b : Scalar) : Scalar := a*a + b*b + 612
def f613_pred (a : Scalar) : Prop := a > 113
def f614_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 614) N
def f615_lag : Lagrangian := fun t x dx => 7*dx*dx - 1*x*x + 0
def f616_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f617_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f618_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f619_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f620_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f621_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f622_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f623_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f624_scalar (a b : Scalar) : Scalar := a*a + b*b + 624
def f625_pred (a : Scalar) : Prop := a > 125
def f626_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 626) N
def f627_lag : Lagrangian := fun t x dx => 5*dx*dx - 3*x*x + 0
def f628_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f629_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f630_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f631_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f632_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f633_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f634_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f635_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f636_scalar (a b : Scalar) : Scalar := a*a + b*b + 636
def f637_pred (a : Scalar) : Prop := a > 137
def f638_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 638) N
def f639_lag : Lagrangian := fun t x dx => 3*dx*dx - 5*x*x + 0
def f640_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f641_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f642_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f643_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f644_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f645_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f646_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f647_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f648_scalar (a b : Scalar) : Scalar := a*a + b*b + 648
def f649_pred (a : Scalar) : Prop := a > 149
def f650_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 650) N
def f651_lag : Lagrangian := fun t x dx => 1*dx*dx - 2*x*x + 0
def f652_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f653_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f654_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f655_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f656_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f657_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f658_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f659_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f660_scalar (a b : Scalar) : Scalar := a*a + b*b + 660
def f661_pred (a : Scalar) : Prop := a > 161
def f662_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 662) N
def f663_lag : Lagrangian := fun t x dx => 6*dx*dx - 4*x*x + 0
def f664_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f665_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f666_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f667_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f668_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f669_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f670_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f671_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f672_scalar (a b : Scalar) : Scalar := a*a + b*b + 672
def f673_pred (a : Scalar) : Prop := a > 173
def f674_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 674) N
def f675_lag : Lagrangian := fun t x dx => 4*dx*dx - 1*x*x + 0
def f676_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f677_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f678_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f679_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f680_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f681_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f682_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f683_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f684_scalar (a b : Scalar) : Scalar := a*a + b*b + 684
def f685_pred (a : Scalar) : Prop := a > 185
def f686_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 686) N
def f687_lag : Lagrangian := fun t x dx => 2*dx*dx - 3*x*x + 0
def f688_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f689_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f690_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f691_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f692_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f693_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f694_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f695_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f696_scalar (a b : Scalar) : Scalar := a*a + b*b + 696
def f697_pred (a : Scalar) : Prop := a > 197
def f698_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 698) N
def f699_lag : Lagrangian := fun t x dx => 7*dx*dx - 5*x*x + 0
def f700_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f701_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f702_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f703_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f704_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f705_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f706_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f707_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f708_scalar (a b : Scalar) : Scalar := a*a + b*b + 708
def f709_pred (a : Scalar) : Prop := a > 209
def f710_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 710) N
def f711_lag : Lagrangian := fun t x dx => 5*dx*dx - 2*x*x + 0
def f712_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f713_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f714_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f715_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f716_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f717_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f718_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f719_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f720_scalar (a b : Scalar) : Scalar := a*a + b*b + 720
def f721_pred (a : Scalar) : Prop := a > 221
def f722_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 722) N
def f723_lag : Lagrangian := fun t x dx => 3*dx*dx - 4*x*x + 0
def f724_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f725_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f726_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f727_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f728_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f729_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f730_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f731_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f732_scalar (a b : Scalar) : Scalar := a*a + b*b + 732
def f733_pred (a : Scalar) : Prop := a > 233
def f734_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 734) N
def f735_lag : Lagrangian := fun t x dx => 1*dx*dx - 1*x*x + 0
def f736_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f737_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f738_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f739_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f740_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f741_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f742_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f743_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f744_scalar (a b : Scalar) : Scalar := a*a + b*b + 744
def f745_pred (a : Scalar) : Prop := a > 245
def f746_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 746) N
def f747_lag : Lagrangian := fun t x dx => 6*dx*dx - 3*x*x + 0
def f748_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f749_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f750_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f751_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f752_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f753_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f754_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f755_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f756_scalar (a b : Scalar) : Scalar := a*a + b*b + 756
def f757_pred (a : Scalar) : Prop := a > 257
def f758_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 758) N
def f759_lag : Lagrangian := fun t x dx => 4*dx*dx - 5*x*x + 0
def f760_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f761_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f762_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f763_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f764_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f765_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f766_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f767_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f768_scalar (a b : Scalar) : Scalar := a*a + b*b + 768
def f769_pred (a : Scalar) : Prop := a > 269
def f770_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 770) N
def f771_lag : Lagrangian := fun t x dx => 2*dx*dx - 2*x*x + 0
def f772_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f773_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f774_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f775_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f776_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f777_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f778_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f779_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f780_scalar (a b : Scalar) : Scalar := a*a + b*b + 780
def f781_pred (a : Scalar) : Prop := a > 281
def f782_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 782) N
def f783_lag : Lagrangian := fun t x dx => 7*dx*dx - 4*x*x + 0
def f784_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f785_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f786_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f787_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f788_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f789_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f790_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f791_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f792_scalar (a b : Scalar) : Scalar := a*a + b*b + 792
def f793_pred (a : Scalar) : Prop := a > 293
def f794_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 794) N
def f795_lag : Lagrangian := fun t x dx => 5*dx*dx - 1*x*x + 0
def f796_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f797_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f798_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f799_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f800_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f801_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f802_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f803_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f804_scalar (a b : Scalar) : Scalar := a*a + b*b + 804
def f805_pred (a : Scalar) : Prop := a > 305
def f806_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 806) N
def f807_lag : Lagrangian := fun t x dx => 3*dx*dx - 3*x*x + 0
def f808_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f809_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f810_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f811_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f812_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f813_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f814_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f815_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f816_scalar (a b : Scalar) : Scalar := a*a + b*b + 816
def f817_pred (a : Scalar) : Prop := a > 317
def f818_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 818) N
def f819_lag : Lagrangian := fun t x dx => 1*dx*dx - 5*x*x + 0
def f820_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f821_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f822_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f823_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f824_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f825_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 6
def f826_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f827_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f828_scalar (a b : Scalar) : Scalar := a*a + b*b + 828
def f829_pred (a : Scalar) : Prop := a > 329
def f830_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 830) N
def f831_lag : Lagrangian := fun t x dx => 6*dx*dx - 2*x*x + 0
def f832_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f833_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f834_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f835_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f836_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f837_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 4
def f838_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f839_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f840_scalar (a b : Scalar) : Scalar := a*a + b*b + 840
def f841_pred (a : Scalar) : Prop := a > 341
def f842_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 842) N
def f843_lag : Lagrangian := fun t x dx => 4*dx*dx - 4*x*x + 0
def f844_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 5*h1SeminormSq x N
def f845_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 5
def f846_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f847_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 0
def f848_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f849_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 2
def f850_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f851_soft (x lam : Scalar) : Scalar := softThreshold x lam + 1
def f852_scalar (a b : Scalar) : Scalar := a*a + b*b + 852
def f853_pred (a : Scalar) : Prop := a > 353
def f854_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 854) N
def f855_lag : Lagrangian := fun t x dx => 2*dx*dx - 1*x*x + 0
def f856_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 2*h1SeminormSq x N
def f857_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 7
def f858_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f859_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 2
def f860_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f861_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 0
def f862_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f863_soft (x lam : Scalar) : Scalar := softThreshold x lam + 3
def f864_scalar (a b : Scalar) : Scalar := a*a + b*b + 864
def f865_pred (a : Scalar) : Prop := a > 365
def f866_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 866) N
def f867_lag : Lagrangian := fun t x dx => 7*dx*dx - 3*x*x + 0
def f868_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 4*h1SeminormSq x N
def f869_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 9
def f870_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f871_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -1
def f872_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f873_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 5
def f874_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f875_soft (x lam : Scalar) : Scalar := softThreshold x lam + 0
def f876_scalar (a b : Scalar) : Scalar := a*a + b*b + 876
def f877_pred (a : Scalar) : Prop := a > 377
def f878_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 878) N
def f879_lag : Lagrangian := fun t x dx => 5*dx*dx - 5*x*x + 0
def f880_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 1*h1SeminormSq x N
def f881_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 1
def f882_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f883_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + 1
def f884_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f885_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 3
def f886_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f887_soft (x lam : Scalar) : Scalar := softThreshold x lam + 2
def f888_scalar (a b : Scalar) : Scalar := a*a + b*b + 888
def f889_pred (a : Scalar) : Prop := a > 389
def f890_seq (x : Sequence) (N : Nat) : Scalar := sumN (fun j => x j * 890) N
def f891_lag : Lagrangian := fun t x dx => 3*dx*dx - 2*x*x + 0
def f892_norm (x : Sequence) (N : Nat) : Scalar := l2NormSq x N + 3*h1SeminormSq x N
def f893_energy (m : Scalar) (x : Sequence) (i : Nat) : Scalar := discreteEnergy m (fun x => x*x) x i + 3
def f894_action (p : FixedPath) : Scalar := discreteAction freeLagrangian p + 0
def f895_el (p : FixedPath) (j : Nat) : Scalar := elResidual freeLagrangian p j + -2
def f896_tv (x : Sequence) (N : Nat) : Scalar := totalVariation x N * 3
def f897_gl (x : Sequence) (N : Nat) : Scalar := ginzburgLandauEnergy x N + 1
def f898_w1 (x y : Sequence) (N : Nat) : Scalar := wasserstein1 x y N * 3
def f899_soft (x lam : Scalar) : Scalar := softThreshold x lam + 4
def f900_scalar (a b : Scalar) : Scalar := a*a + b*b + 900

#eval IO.println "File 3 definitions loaded"