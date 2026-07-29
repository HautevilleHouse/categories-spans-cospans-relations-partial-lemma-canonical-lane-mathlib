import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Span {C : Type u} [Category C] (A B : C) where
  apex : C
  left : apex ⟶ A
  right : apex ⟶ B

structure SpanMorphism {C : Type u} [Category C] {A B : C} (S T : Span A B) where
  morphism : S.apex ⟶ T.apex
  commLeft : morphism ≫ T.left = S.left
  commRight : morphism ≫ T.right = S.right

theorem span_morphism_identity {C : Type u} [Category C] {A B : C} (S : Span A B) : SpanMorphism S S := {
  morphism := 𝟙 S.apex
  commLeft := by simp
  commRight := by simp
}

structure SpanAdmissibleClass (C : Type u) [Category C] where
  object : C
  apexObject : C
  spanData : Span object apexObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse
