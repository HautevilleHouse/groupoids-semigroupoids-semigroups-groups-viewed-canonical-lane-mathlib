import canonicalLaneMathlib.AdmissibleClass
import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GroupoidDefinitions

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure SemigroupoidToGroupoidPackage where
  semigroupoid : SemigroupoidObject
  groupoid : GroupoidObject
  embedding : semigroupoid.carrier → groupoid.carrier
  compositionPreserved : Prop
  invertibilityAdded : Prop

structure SemigroupoidToGroupoidEvidence (S : SemigroupoidToGroupoidPackage) where
  compositionPreservedClosed : S.compositionPreserved
  invertibilityAddedClosed : S.invertibilityAdded

def SemigroupoidToGroupoidClosed (S : SemigroupoidToGroupoidPackage) : Prop :=
  S.compositionPreserved ∧ S.invertibilityAdded

theorem semigroupoid_to_groupoid_closed_from_evidence (S : SemigroupoidToGroupoidPackage) (E : SemigroupoidToGroupoidEvidence S) :
    SemigroupoidToGroupoidClosed S := by
  exact And.intro E.compositionPreservedClosed E.invertibilityAddedClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse