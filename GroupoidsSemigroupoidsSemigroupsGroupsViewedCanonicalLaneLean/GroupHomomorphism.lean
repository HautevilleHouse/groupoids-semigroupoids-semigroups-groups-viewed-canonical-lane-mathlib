import canonicalLaneMathlib.AdmissibleClass
import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GroupoidDefinitions

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupHomomorphismPackage where
  sourceGroup : GroupObject
  targetGroup : GroupObject
  mapping : sourceGroup.carrier → targetGroup.carrier
  homomorphismProperty : Prop
  kernelCharacterization : Prop

structure GroupHomomorphismEvidence (H : GroupHomomorphismPackage) where
  homomorphismPropertyClosed : H.homomorphismProperty
  kernelCharacterizationClosed : H.kernelCharacterization

def GroupHomomorphismClosed (H : GroupHomomorphismPackage) : Prop :=
  H.homomorphismProperty ∧ H.kernelCharacterization

theorem group_homomorphism_closed_from_evidence (H : GroupHomomorphismPackage) (E : GroupHomomorphismEvidence H) :
    GroupHomomorphismClosed H := by
  exact And.intro E.homomorphismPropertyClosed E.kernelCharacterizationClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse