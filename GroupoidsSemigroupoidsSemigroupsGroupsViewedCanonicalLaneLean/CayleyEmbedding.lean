import canonicalLaneMathlib.AdmissibleClass
import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GroupoidDefinitions

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure CayleyEmbeddingPackage where
  sourceGroup : GroupObject
  targetSymmetricGroup : GroupObject
  embedding : sourceGroup.carrier → targetSymmetricGroup.carrier
  injective : Prop
  homomorphismProperty : Prop

structure CayleyEmbeddingEvidence (C : CayleyEmbeddingPackage) where
  injectiveClosed : C.injective
  homomorphismPropertyClosed : C.homomorphismProperty

def CayleyEmbeddingClosed (C : CayleyEmbeddingPackage) : Prop :=
  C.injective ∧ C.homomorphismProperty

theorem cayley_embedding_closed_from_evidence (C : CayleyEmbeddingPackage) (E : CayleyEmbeddingEvidence C) :
    CayleyEmbeddingClosed C := by
  exact And.intro E.injectiveClosed E.homomorphismPropertyClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse