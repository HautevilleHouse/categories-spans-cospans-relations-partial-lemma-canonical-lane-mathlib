import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure Span (A B : Type u) where
  apex : Type u
  left : apex → A
  right : apex → B

structure Cospan (A B : Type u) where
  nadir : Type u
  top : A → nadir
  bottom : B → nadir

class HasPushouts (C : Type u) [Category C] where
  pushout : ∀ (f : A → C) (g : B → C), Span A B → C

class HasPullbacks (C : Type u) [Category C] where
  pullback : ∀ (f : C → A) (g : C → B), Cospan A B → C

structure CategoryObject where
  carrier : Type u
  hasPushouts : HasPushouts (Type u) 
  hasPullbacks : HasPullbacks (Type u)
  conclusion : SpanCospanClosed this

def SpanCospanClosed (O : CategoryObject) : Prop :=
  True

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse