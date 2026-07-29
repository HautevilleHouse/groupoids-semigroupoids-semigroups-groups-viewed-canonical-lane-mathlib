import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupoidObject where
  carrier : Type u
  compositionLaw : carrier → carrier → carrier
  identityElement : carrier
  associative : Prop
  identityLeft : Prop
  identityRight : Prop
  invertible : Prop

structure AdmissibleClass where
  object : GroupoidObject
  compositionClosed : Prop
  identityClosed : Prop
  inversionClosed : Prop
  remainderRecorded : Prop
  gateWitness : compositionClosed ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.compositionClosed ∧ A.identityClosed ∧ A.inversionClosed) ∧
  (A.compositionClosed ∨ A.remainderRecorded)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse