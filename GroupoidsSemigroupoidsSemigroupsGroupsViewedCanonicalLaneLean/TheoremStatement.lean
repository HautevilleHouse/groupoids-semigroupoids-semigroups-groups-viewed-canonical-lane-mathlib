import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure AlgebraicAdmittedObject where
  carrier : Type
  operation : carrier → carrier → carrier
  identityElement : carrier
  inverseMap : carrier → carrier
  associativity : ∀ a b c : carrier, operation (operation a b) c = operation a (operation b c)
  identityLeft : ∀ a : carrier, operation identityElement a = a
  identityRight : ∀ a : carrier, operation a identityElement = a
  inverseLeft : ∀ a : carrier, operation (inverseMap a) a = identityElement
  inverseRight : ∀ a : carrier, operation a (inverseMap a) = identityElement
  conclusion : True

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.associativity ∧ O.identityLeft ∧ O.identityRight ∧ O.inverseLeft ∧ O.inverseRight

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse