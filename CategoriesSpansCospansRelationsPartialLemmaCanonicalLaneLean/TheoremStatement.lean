import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure TheoremStatement where
  spanClosed : Prop
  cospanClosed : Prop
  relationClosed : Prop
  partialLemmaClosed : Prop

def constrainedSpanCospanRelationsPartialLemmaStatement (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse