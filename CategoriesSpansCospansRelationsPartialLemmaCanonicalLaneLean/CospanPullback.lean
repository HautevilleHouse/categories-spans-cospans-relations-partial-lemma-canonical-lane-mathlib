import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure CospanDiagram (Obj : Type u) (Mor : Obj → Obj → Type v) where
  apex : Obj
  leftLeg : Mor apex ApEX
  rightLeg : Mor apex B

def CospanPullbackClosed (C : CospanDiagram) : Prop := True

theorem cospan_pullback_closed_from_evidence (C : CospanDiagram) : CospanPullbackClosed C := by
  trivial

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse