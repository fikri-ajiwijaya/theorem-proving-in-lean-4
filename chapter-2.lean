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

namespace chapter2_example14
  #check fun (x : Nat) => x + 5
  #check λ (x : Nat) => x + 5
  #check fun x => x + 5
  #check λ x => x + 5
end chapter2_example14

namespace chapter2_experiment14
  def F := λ x ↦ x + 5
  def G : Nat → Nat := λ x ↦ x + 5

  #check F
  #check G
end chapter2_experiment14

namespace chapter2_example15
  #eval (λ x : Nat => x + 5) 10
end chapter2_example15


namespace chapter2_experiment15
  set_option linter.unusedVariables false

  variable (α β : Type)

  #check α
  #check β

  variable (t : β)

  #check t
  #check λ x : α ↦ t
  #check (λ x ↦ t : α → β)

  def F : α → β := λ x ↦ t
  #check F
  #check (F)
end chapter2_experiment15

namespace chapter2_example16
  #check fun x : Nat => fun y : Bool => if not y then x + 1 else x + 2
  #check fun (x : Nat) (y : Bool) => if not y then x + 1 else x + 2
  #check fun x y => if not y then x + 1 else x + 2
end chapter2_example16

namespace chapter2_example17
  set_option linter.unusedVariables false

  def f (n : Nat) : String := toString n
  def g (s : String) : Bool := s.length > 0

  #check fun x : Nat => x
  #check fun x : Nat => true
  #check fun x : Nat => g (f x)
  #check fun x => g (f x)
end chapter2_example17

namespace chapter2_example18
  #check fun (g : String → Bool) (f : Nat → String) (x : Nat) => g (f x)
end chapter2_example18

namespace chapter2_experiment18
  #check (λ g f x ↦ g (f x) : (String → Bool) → (Nat → String) → Nat → Bool)
end chapter2_experiment18

namespace chapter2_example19
  #check fun (α β γ : Type) (g : β → γ) (f : α → β) (x : α) => g (f x)
end chapter2_example19

namespace chapter2_example20
  set_option linter.unusedVariables false

  #check (fun x : Nat => x) 1
  #check (fun x : Nat => true) 1

  def f (n : Nat) : String := toString n
  def g (s : String) : Bool := s.length > 0

  #check (fun (α β γ :Type) (u : β → γ) (v : α → β) (x : α) => u (v x)) Nat String Bool g f 0
end chapter2_example20

namespace chapter2_example21
  set_option linter.unusedVariables false

  #eval (fun x : Nat => x) 1
  #eval (fun x : Nat => true) 1
end chapter2_example21
