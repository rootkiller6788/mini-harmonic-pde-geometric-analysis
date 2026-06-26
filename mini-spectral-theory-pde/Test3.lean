-- Test what's available in Lean 4 kernel
#check Rat
#check (1/2 : Rat)
#check (fun (x y : Rat) => x + y)
#check (fun (x y : Rat) => x * y)
#check (fun (x y : Rat) => x / y)
#eval ((1/2 : Rat) + (1/3 : Rat))
