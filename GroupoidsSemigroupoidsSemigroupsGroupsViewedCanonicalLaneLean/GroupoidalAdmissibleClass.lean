import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupoidalAdmittedObject where
  carrier : Type u
  composition : carrier → carrier → carrier
  identity : carrier
  invertibility : ∀ x : carrier, ∃ y : carrier, composition x y = identity ∧ composition y x = identity

structure AdmissibleClass where
  object : GroupoidalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupoidalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse
