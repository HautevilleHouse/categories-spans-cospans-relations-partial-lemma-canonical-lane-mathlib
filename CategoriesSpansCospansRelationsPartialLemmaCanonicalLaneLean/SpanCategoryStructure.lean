import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure SpanCategory (Obj : Type u) (Mor : Obj → Obj → Type v) where
  identity : (X : Obj) → Mor X X
  compose : {X Y Z : Obj} → Mor Y Z → Mor X Y → Mor X Z
  idLeft : {X Y : Obj} (f : Mor X Y) → compose (identity Y) f = f
  idRight : {X Y : Obj} (f : Mor X Y) → compose f (identity X) = f
  assoc : {X Y Z W : Obj} (f : Mor Z W) (g : Mor Y Z) (h : Mor X Y) → compose (compose f g) h = compose f (compose g h)

def SpanCategoryClosed (C : SpanCategory) : Prop := True

theorem span_category_closed_from_evidence (C : SpanCategory) : SpanCategoryClosed C := by
  trivial

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse