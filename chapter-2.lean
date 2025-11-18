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

namespace chapter2_example3
  #check Nat
  #check Bool
  #check Nat → Bool
  #check Nat × Bool
  #check Nat → Nat
  #check Nat × Nat → Nat
  #check Nat → Nat → Nat
  #check Nat → (Nat → Nat)
  #check Nat → Nat → Bool
  #check (Nat → Nat) → Bool
end chapter2_example3

namespace chapter2_example4
  def α : Type := Nat
  def β : Type := Bool
  def F : Type → Type := List
  def G : Type → Type → Type := Prod

  #check α
  #check β
  #check F α
  #check F Nat
  #check G α
  #check G α β
  #check G α Nat
end chapter2_example4

namespace chapter2_example5
  def α : Type := Nat
  def β : Type := Bool

  #check Prod α β
  #check α × β

  #check Prod Nat Nat
  #check Nat × Nat
end chapter2_example5

namespace chapter2_example6
  def α : Type := Nat

  #check List α
  #check List Nat
end chapter2_example6

namespace chapter2_example7
  #check Type
end chapter2_example7

namespace chapter2_example8
  #check Type
  #check Type 1
  #check Type 2
  #check Type 3
  #check Type 4
end chapter2_example8

namespace chapter2_example9
  #check Type
  #check Type 0
end chapter2_example9

namespace chapter2_example10
  #check List
end chapter2_example10

namespace chapter2_example11
  #check Prod
end chapter2_example11

namespace chapter2_example12
  universe u

  def F (α : Type u) : Type u := Prod α α

  #check F
end chapter2_example12

namespace chapter2_experiment12
  universe u

  def F : Type u → Type u := λ α ↦ α × α

  #check F
end chapter2_experiment12

namespace chapter2_example13
  def F.{u} (α : Type u) : Type u := Prod α α

  #check F
end chapter2_example13

namespace chapter2_experiment13
  def F.{u} : Type u → Type u := λ α ↦ α × α

  #check F
end chapter2_experiment13
