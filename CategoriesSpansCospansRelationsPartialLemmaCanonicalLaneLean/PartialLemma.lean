import .AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean

structure PartialLemma where
  premise : Prop
  conclusion : Prop
  proof : premise → conclusion

structure PartialLemmaPackage where
  lemmas : List PartialLemma
  composition : PartialLemma → PartialLemma → PartialLemma
  identity : PartialLemma
  associativity : (f g h : PartialLemma) → composition (composition f g) h = composition f (composition g h)
  identityLeft : (f : PartialLemma) → composition identity f = f
  identityRight : (f : PartialLemma) → composition f identity = f

structure PartialLemmaPackageEvidence (P : PartialLemmaPackage) where
  associativityClosed : ∀ (f g h : PartialLemma), P.composition (P.composition f g) h = P.composition f (P.composition g h)
  identityLeftClosed : ∀ (f : PartialLemma), P.composition P.identity f = f
  identityRightClosed : ∀ (f : PartialLemma), P.composition f P.identity = f

def PartialLemmaPackageClosed (P : PartialLemmaPackage) : Prop :=
  (∀ (f g h : PartialLemma), P.composition (P.composition f g) h = P.composition f (P.composition g h)) ∧
  (∀ (f : PartialLemma), P.composition P.identity f = f) ∧
  (∀ (f : PartialLemma), P.composition f P.identity = f)

theorem partial_lemma_package_closed_from_evidence (P : PartialLemmaPackage) (E : PartialLemmaPackageEvidence P) : PartialLemmaPackageClosed P := by
  exact And.intro E.associativityClosed (And.intro E.identityLeftClosed E.identityRightClosed)

end CategoriesSpansCospansRelationsPartialLemmaCanonicalLaneLean
end HautevilleHouse