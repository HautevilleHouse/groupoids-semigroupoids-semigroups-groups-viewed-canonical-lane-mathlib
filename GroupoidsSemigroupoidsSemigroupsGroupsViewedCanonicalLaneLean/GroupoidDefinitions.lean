import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupoidObject where
  carrier : Type
  identity : carrier → carrier
  composition : carrier → carrier → carrier → carrier
  associativity : Prop
  identityLaw : Prop
  invertibility : Prop
  associativityTerm : associativity
  identityLawTerm : identityLaw
  invertibilityTerm : invertibility

structure SemigroupoidObject where
  carrier : Type
  composition : carrier → carrier → carrier → carrier
  associativity : Prop
  associativityTerm : associativity

structure SemigroupObject where
  carrier : Type
  multiplication : carrier → carrier → carrier
  associativity : Prop
  associativityTerm : associativity

structure GroupObject where
  carrier : Type
  multiplication : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  associativity : Prop
  identityLaw : Prop
  inverseLaw : Prop
  associativityTerm : associativity
  identityLawTerm : identityLaw
  inverseLawTerm : inverseLaw

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse