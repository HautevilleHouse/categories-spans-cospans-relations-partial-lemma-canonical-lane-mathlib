import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure SpanCospanSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SpanCospanAdmittedObject where
  space : SpanCospanSpace
  spanClosed : Prop
  cospanClosed : Prop
  conclusion : spanClosed ∧ cospanClosed

structure SpanCospanEndgameState where
  object : SpanCospanAdmittedObject

def SpanCospanWitnessClosed (O : SpanCospanAdmittedObject) : Prop :=
  O.spanClosed ∧ O.cospanClosed

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse