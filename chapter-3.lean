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
