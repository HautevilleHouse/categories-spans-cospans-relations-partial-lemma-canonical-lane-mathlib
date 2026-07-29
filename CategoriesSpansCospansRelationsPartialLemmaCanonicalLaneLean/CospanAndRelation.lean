import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Cospan {C : Type u} [Category C] (A B : C) where
  apex : C
  left : A ⟶ apex
  right : B ⟶ apex

structure CospanMorphism {C : Type u} [Category C] {A B : C} (S T : Cospan A B) where
  morphism : S.apex ⟶ T.apex
  commLeft : T.left ≫ morphism = S.left
  commRight : T.right ≫ morphism = S.right

theorem cospan_morphism_identity {C : Type u} [Category C] {A B : C} (S : Cospan A B) : CospanMorphism S S := {
  morphism := 𝟙 S.apex
  commLeft := by simp
  commRight := by simp
}

structure Relation {X : Type u} (R : X → X → Prop) where
  source : X
  target : X
  holds : R source target

structure PartialLemma {X : Type u} (P : X → Prop) (Q : X → Prop) where
  domain : X
  premise : P domain
  conclusion : Q domain

theorem partial_lemma_apply {X : Type u} {P Q : X → Prop} (h : PartialLemma P Q) : Q h.domain := h.conclusion

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse
