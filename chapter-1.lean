namespace chapter1_example1
  theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p :=
    fun hpq : p ∧ q =>
    have hp : p := hpq.left
    have hq : q := hpq.right
    show q ∧ p from And.intro hq hp
end chapter1_example1

namespace chapter1_experiment1
  theorem and_commutative :
    ∀ {p q : Prop}, p ∧ q → q ∧ p
  :=
    λ hpq ↦ ⟨hpq.right, hpq.left⟩
end chapter1_experiment1
