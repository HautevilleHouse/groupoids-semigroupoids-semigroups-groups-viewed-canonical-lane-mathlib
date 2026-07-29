import canonicalLaneMathlib.AdmissibleClass
import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GroupoidDefinitions

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure MorphismLiftingPackage where
  sourceGroupoid : GroupoidObject
  targetGroupoid : GroupoidObject
  mapping : sourceGroupoid.carrier → targetGroupoid.carrier
  functoriality : Prop
  identityPreserved : Prop
  invertibilityPreserved : Prop

structure MorphismLiftingEvidence (M : MorphismLiftingPackage) where
  functorialityClosed : M.functoriality
  identityPreservedClosed : M.identityPreserved
  invertibilityPreservedClosed : M.invertibilityPreserved

def MorphismLiftingClosed (M : MorphismLiftingPackage) : Prop :=
  M.functoriality ∧ M.identityPreserved ∧ M.invertibilityPreserved

theorem morphism_lifting_closed_from_evidence (M : MorphismLiftingPackage) (E : MorphismLiftingEvidence M) :
    MorphismLiftingClosed M := by
  exact And.intro E.functorialityClosed (And.intro E.identityPreservedClosed E.invertibilityPreservedClosed)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse