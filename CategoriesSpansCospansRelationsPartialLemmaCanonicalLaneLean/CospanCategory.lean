import .AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure CospanCategory where
  object : Type u
  cospan : object → object → Type v
  identity : (X : object) → cospan X X
  composition : {X Y Z : object} → cospan X Y → cospan Y Z → cospan X Z
  identityLeft : (f : cospan X Y) → composition (identity X) f = f
  identityRight : (f : cospan X Y) → composition f (identity Y) = f
  associativity : {X Y Z W : object} → (f : cospan X Y) → (g : cospan Y Z) → (h : cospan Z W) → composition (composition f g) h = composition f (composition g h)

structure CospanCategoryEvidence (C : CospanCategory) where
  identityLeftClosed : ∀ {X Y} (f : C.cospan X Y), C.composition (C.identity X) f = f
  identityRightClosed : ∀ {X Y} (f : C.cospan X Y), C.composition f (C.identity Y) = f
  associativityClosed : ∀ {X Y Z W} (f : C.cospan X Y) (g : C.cospan Y Z) (h : C.cospan Z W), C.composition (C.composition f g) h = C.composition f (C.composition g h)

def CospanCategoryClosed (C : CospanCategory) : Prop :=
  (∀ {X Y} (f : C.cospan X Y), C.composition (C.identity X) f = f) ∧
  (∀ {X Y} (f : C.cospan X Y), C.composition f (C.identity Y) = f) ∧
  (∀ {X Y Z W} (f : C.cospan X Y) (g : C.cospan Y Z) (h : C.cospan Z W), C.composition (C.composition f g) h = C.composition f (C.composition g h))

theorem cospan_category_closed_from_evidence (C : CospanCategory) (E : CospanCategoryEvidence C) : CospanCategoryClosed C := by
  exact And.intro E.identityLeftClosed (And.intro E.identityRightClosed E.associativityClosed)

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse