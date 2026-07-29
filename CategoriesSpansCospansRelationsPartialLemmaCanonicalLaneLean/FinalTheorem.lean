import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

def ConstrainedSpanCospanClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_span_cospan_endgame (A : AdmissibleClass) : ConstrainedSpanCospanClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse
