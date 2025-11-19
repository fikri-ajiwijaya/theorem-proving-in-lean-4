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

namespace chapter2_example22
  def double (x : Nat) : Nat :=
    x + x
end chapter2_example22

namespace chapter2_example23
  def double (x : Nat) : Nat :=
    x + x

  #eval double 3
end chapter2_example23

namespace chapter2_example25
  def double : Nat → Nat :=
    fun x => x + x

  #eval double 3
end chapter2_example25

namespace chapter2_example26
  def double :=
    fun (x : Nat) => x + x
end chapter2_example26

namespace chapter2_example27
  def pi := 3.141592654
end chapter2_example27

namespace chapter2_example28
  def add (x y : Nat) :=
    x + y

  #eval add 3 2
end chapter2_example28

namespace chapter2_example29
  def double : Nat → Nat := λ x ↦ x + x

  def add (x : Nat) (y : Nat) :=
    x + y

  #eval add (double 3) (7 + 9)
end chapter2_example29

namespace chapter2_example30
  def greater (x y : Nat) :=
    if x > y then x
    else y
end chapter2_example30

namespace chapter2_example31
  def double : Nat → Nat := λ x ↦ x + x

  def doTwice (f : Nat → Nat) (x : Nat) : Nat :=
    f (f x)

  #eval doTwice double 2
end chapter2_example31

namespace chapter2_example32
  def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ :=
    g (f x)
end chapter2_example32

namespace chapter2_example33
  def compose :
    ∀ {α β γ : Type}, (β → γ) → (α → β) → α → γ
  :=
    λ g f x ↦ g (f x)

  def double : Nat → Nat := λ x ↦ x + x

  def square (x : Nat) : Nat :=
    x * x

  #eval @compose Nat Nat Nat double square 3
end chapter2_example33

namespace chapter2_example35
  #check let y := 2 + 2; y * y
  #eval  let y := 2 + 2; y * y

  def twice_double (x : Nat) : Nat :=
    let y := x + x; y * y

  #eval twice_double 2
end chapter2_example35

namespace chapter2_example36
  #check let y := 2 + 2; let z := y + y; z * z
  #eval  let y := 2 + 2; let z := y + y; z * z
end chapter2_example36

namespace chapter2_example37
  def t (x : Nat) : Nat :=
    let y := x + x
    y * y
end chapter2_example37

namespace chapter2_example38
  set_option diagnostics true

  def foo := let a := Nat; fun x : a => x + 2
  -- def bar := (fun a => fun x : a => x + 2) Nat
end chapter2_example38

namespace chapter2_experiment38
  set_option diagnostics true

  def f1 := let a := Nat; λ (x : a) ↦ x + 2
  -- def f2 := λ a (x : a) ↦ x + 2
  -- def f3 := λ (a : Type) (x : a) ↦ x + 2
  def f4 : Nat → Nat := λ x ↦ x + 2
  def α := Nat
  -- def f5 := λ (x : α) ↦ x + 2
  -- def f6 : α → α := λ x ↦ x + 2
  -- def f7 : α → α → α := λ x y ↦ x + y
  def f8 : Nat → Nat → Nat := λ x y ↦ x + y

  #check f1
  -- #check f2
  -- #check f3
  #check f4
  -- #check f5
  -- #check f6
  -- #check f7
  #check f8
end chapter2_experiment38

namespace chapter2_example39
  def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ :=
    g (f x)

  def doTwice (α : Type) (h : α → α) (x : α) : α :=
    h (h x)

  def doThrice (α : Type) (h : α → α) (x : α) : α :=
    h (h (h x))
end chapter2_example39

namespace chapter2_example40
  variable (α β γ : Type)

  def compose (g : β → γ) (f : α → β) (x : α) : γ :=
    g (f x)

  def doTwice (h : α → α) (x : α) : α :=
    h (h x)

  def doThrice (h : α → α) (x : α) : α :=
    h (h (h x))
end chapter2_example40

namespace chapter2_example41
  variable (α β γ : Type)
  variable (g : β → γ) (f : α → β) (h : α → α)
  variable (x : α)

  def compose := g (f x)
  def doTwice := h (h x)
  def doThrice := h (h (h x))

  #print compose
  #print doTwice
  #print doThrice
end chapter2_example41

namespace chapter2_example42
  section useful
    variable (α β γ : Type)
    variable (g : β → γ) (f : α → β) (h : α → α)
    variable (x : α)

    def compose := g (f x)
    def doTwice := h (h x)
    def doThrice := h (h (h x))
  end useful
end chapter2_example42
