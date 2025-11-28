namespace chapter3_example1
  def Implies (p q : Prop) : Prop := p → q

  #check And
  #check Or
  #check Not
  #check Implies

  variable (p q r : Prop)
  #check And p q
  #check Or (And p q) r
  #check Implies (And p q) (And q p)
end chapter3_example1

namespace chapter3_example2
  def Implies : Prop → Prop → Prop := λ p q ↦ p → q

  structure Proof (p : Prop) : Type where
    proof : p

  #check Proof

  axiom and_comm (p q : Prop) : Proof (Implies (And p q) (And q p))

  variable (p q : Prop)
  #check and_comm p q
end chapter3_example2

namespace chapter3_example3
  def Implies : Prop → Prop → Prop := λ p q ↦ p → q

  structure Proof (p : Prop) : Type where
    proof : p

  axiom modus_ponens : (p q : Prop) → Proof (Implies p q) → Proof p → Proof q
end chapter3_example3

namespace chapter3_example4
  def Implies : Prop → Prop → Prop := λ p q ↦ p → q

  structure Proof (p : Prop) : Type where
    proof : p

  axiom implies_intro : (p q : Prop) → (Proof p → Proof q) → Proof (Implies p q)
end chapter3_example4

namespace chapter3_example5
  set_option linter.unusedVariables false

  variable {p : Prop}
  variable {q : Prop}

  theorem t1 : p → q → p := fun hp : p => fun hq : q => hp
end chapter3_example5

namespace chapter3_example6
  set_option linter.unusedVariables false

  variable {p q : Prop}

  theorem t1 : p → q → p := fun hp : p => fun hq : q => hp

  #print t1
end chapter3_example6

namespace chapter3_example7
  set_option linter.unusedVariables false

  variable {p q : Prop}

  theorem t1 : p → q → p :=
    fun hp : p =>
    fun hq : q =>
    show p from hp
end chapter3_example7

namespace chapter3_example8
  set_option linter.unusedVariables false

  variable {p q : Prop}

  theorem t1 (hp : p) (hq : q) : p := hp

  #print t1
end chapter3_example8

namespace chapter3_example9
  set_option linter.unusedVariables false

  variable {p q : Prop}

  theorem t1 (hp : p) (hq : q) : p := hp

  axiom hp : p

  theorem t2 : q → p := t1 hp
end chapter3_example9

namespace chapter3_example10
  axiom unsound : False

  theorem ex : 1 = 0 :=
    False.elim unsound
end chapter3_example10

namespace chapter3_example11
  set_option linter.unusedVariables false

  theorem t1 {p q : Prop} (hp : p) (hq : q) : p := hp

  #print t1
end chapter3_example11

namespace chapter3_example12
  set_option linter.unusedVariables false

  theorem t1 : ∀ {p q : Prop}, p → q → p :=
    fun {p q : Prop} (hp : p) (hq : q) => hp
end chapter3_example12

namespace chapter3_example13
  set_option linter.unusedVariables false

  variable {p q : Prop}

  theorem t1 : p → q → p := fun (hp : p) (hq : q) => hp
end chapter3_example13

namespace chapter3_example14
  set_option linter.unusedVariables false

  variable {p q : Prop}
  variable (hp : p)

  -- theorem t1 : q → p := fun (hq : q) => hp
end chapter3_example14

namespace chapter3_example15
  set_option linter.unusedVariables false

  theorem t1 (p q : Prop) (hp : p) (hq : q) : p := hp

  variable (p q r s : Prop)

  #check t1 p q
  #check t1 r s
  #check t1 (r → s) (s → r)

  variable (h : r → s)
  #check t1 (r → s) (s → r) h
end chapter3_example15

namespace chapter3_example16
  variable (p q r s : Prop)

  theorem t2 (h₁ : q → r) (h₂ : p → q) : p → r :=
    fun h₃ : p =>
    show r from h₁ (h₂ h₃)
end chapter3_example16
