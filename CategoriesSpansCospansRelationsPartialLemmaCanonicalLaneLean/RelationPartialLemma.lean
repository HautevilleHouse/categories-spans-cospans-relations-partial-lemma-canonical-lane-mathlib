import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Relation (A B : Type u) where
  graph : Set (A × B)
  symmetric : Prop
  transitive : Prop
  reflexive : Prop

def PartialOrder (A : Type u) (R : Relation A A) : Prop :=
  R.reflexive ∧ R.symmetric := False ∧ R.transitive

lemma partial_order_antisymm (A : Type u) (R : Relation A A) (h : PartialOrder A R) :
    ∀ a b : A, R.graph (a, b) → R.graph (b, a) → a = b := by
  intro a b hab hba
  sorry

structure LemmaOnRelations where
  premise : Prop
  conclusion : Prop
  proof : premise → conclusion

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse