import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Span (C : Type u) [Category C] (A B : C) where
  apex : C
  leg1 : apex ⟶ A
  leg2 : apex ⟶ B

structure Cospan (C : Type u) [Category C] (A B : C) where
  apex : C
  leg1 : A ⟶ apex
  leg2 : B ⟶ apex

structure Relation (C : Type u) [Category C] (A B : C) where
  span : Span C A B
  cospan : Cospan C A B
  commutes : span.leg1 ≫ cospan.leg1 = span.leg2 ≫ cospan.leg2

def RelationClosed {C : Type u} [Category C] {A B : C} (R : Relation C A B) : Prop :=
  True

theorem relation_closed_trivial {C : Type u} [Category C] {A B : C} (R : Relation C A B) :
    RelationClosed R := by
  trivial

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse