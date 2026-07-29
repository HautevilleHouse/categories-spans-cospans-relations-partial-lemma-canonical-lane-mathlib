import .AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Relation (A : Type u) (B : Type v) where
  graph : Set (A × B)

def Relation.compose {A B C : Type u} (R : Relation A B) (S : Relation B C) : Relation A C :=
  { graph := { p | ∃ (b : B), (p.1, b) ∈ R.graph ∧ (b, p.2) ∈ S.graph } }

structure RelationCategory where
  object : Type u
  morphism : object → object → Type v
  identity : (X : object) → morphism X X
  composition : {X Y Z : object} → morphism X Y → morphism Y Z → morphism X Z
  identityLeft : (f : morphism X Y) → composition (identity X) f = f
  identityRight : (f : morphism X Y) → composition f (identity Y) = f
  associativity : {X Y Z W : object} → (f : morphism X Y) → (g : morphism Y Z) → (h : morphism Z W) → composition (composition f g) h = composition f (composition g h)

structure RelationCategoryEvidence (C : RelationCategory) where
  identityLeftClosed : ∀ {X Y} (f : C.morphism X Y), C.composition (C.identity X) f = f
  identityRightClosed : ∀ {X Y} (f : C.morphism X Y), C.composition f (C.identity Y) = f
  associativityClosed : ∀ {X Y Z W} (f : C.morphism X Y) (g : C.morphism Y Z) (h : C.morphism Z W), C.composition (C.composition f g) h = C.composition f (C.composition g h)

def RelationCategoryClosed (C : RelationCategory) : Prop :=
  (∀ {X Y} (f : C.morphism X Y), C.composition (C.identity X) f = f) ∧
  (∀ {X Y} (f : C.morphism X Y), C.composition f (C.identity Y) = f) ∧
  (∀ {X Y Z W} (f : C.morphism X Y) (g : C.morphism Y Z) (h : C.morphism Z W), C.composition (C.composition f g) h = C.composition f (C.composition g h))

theorem relation_category_closed_from_evidence (C : RelationCategory) (E : RelationCategoryEvidence C) : RelationCategoryClosed C := by
  exact And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.associativityClosed)

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse