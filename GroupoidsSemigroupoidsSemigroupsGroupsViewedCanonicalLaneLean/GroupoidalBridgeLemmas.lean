import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GroupoidalAdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

def GroupoidalWitnessClosed (O : GroupoidalAdmittedObject) : Prop :=
  O.invertibility O.identity

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GroupoidalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.invertibility A.object.identity

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse
