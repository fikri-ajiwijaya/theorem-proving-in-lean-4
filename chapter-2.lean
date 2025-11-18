namespace chapter2_example1
  def m : Nat := 1
  def n : Nat := 0
  def b1 : Bool := true
  def b2 : Bool := false

  #check m
  #check n
  #check n + 0
  #check m * (n + 0)
  #check b1
  #check b1 && b2
  #check b1 || b2
  #check true

  #eval 5 * 4
  #eval m + 2
  #eval b1 && b2
end chapter2_example1

namespace chapter2_example2
  #check Nat → Nat
  #check Nat -> Nat

  #check Nat × Nat
  #check Prod Nat Nat

  #check Nat → Nat → Nat
  #check Nat → (Nat → Nat)

  #check Nat × Nat → Nat
  #check (Nat → Nat) → Nat

  #check Nat.succ
  #check (0, 1)
  #check Nat.add

  #check Nat.succ 2
  #check Nat.add 3
  #check Nat.add 5 2
  #check (5, 9).1
  #check (5, 9).2

  #eval Nat.succ 2
  #eval Nat.add 5 2
  #eval (5, 9).1
  #eval (5, 9).2
end chapter2_example2

namespace chapter2_experiment2
  #check Nat → Nat → Nat
  #check Nat → (Nat → Nat) -- Natural interpretation
  #check (Nat → Nat) → Nat

  #check Nat × Nat × Nat
  #check Nat × (Nat × Nat) -- Natural interpretation
  #check (Nat × Nat) × Nat

  #check Nat × Nat → Nat
  #check Nat × (Nat → Nat)
  #check (Nat × Nat) → Nat -- Natural interpretation

  #check Nat → Nat × Nat
  #check Nat → (Nat × Nat) -- Natural interpretation
  #check (Nat → Nat) × Nat

  /- Conclusions:
   - 1. → has right precedence
   - 2. × has right precedence
   - 3. → has lower precedence than ×
   -/
end chapter2_experiment2
