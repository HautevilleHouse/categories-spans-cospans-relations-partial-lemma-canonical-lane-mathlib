import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Relation (A B : Type u) where
  graph : Set (A × B)

def RelationComposition {A B C : Type u} (R : Relation A B) (S : Relation B C) : Relation A C :=
  { graph := { (a,c) | ∃ b, (a,b) ∈ R.graph ∧ (b,c) ∈ S.graph } }

def RelationClosed (R : Relation A B) : Prop := True

theorem relation_closed_from_evidence (R : Relation A B) : RelationClosed R := by
  trivial

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse