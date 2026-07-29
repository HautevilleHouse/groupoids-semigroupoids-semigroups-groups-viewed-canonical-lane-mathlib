import HautevilleHouse.GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GroupoidAdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure SemigroupPackage where
  carrier : Type u
  mult : carrier → carrier → carrier
  associative : Prop
  identityExists : Prop
  invertibility : Prop

structure SemigroupEvidence (S : SemigroupPackage) where
  associativeClosed : S.associative
  identityClosed : S.identityExists
  invertibilityClosed : S.invertibility

def SemigroupClosed (S : SemigroupPackage) : Prop :=
  S.associative ∧ S.identityExists ∧ S.invertibility

theorem semigroup_closed_from_evidence (S : SemigroupPackage) (E : SemigroupEvidence S) : SemigroupClosed S := by
  exact And.intro E.associativeClosed (And.intro E.identityClosed E.invertibilityClosed)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse