import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure Group where
  carrier : Type
  multiplication : carrier -> carrier -> carrier
  identity : carrier
  inverse : carrier -> carrier
  associativity : Prop
  identityProperty : Prop
  inverseProperty : Prop

structure GroupViewed (G : Group) where
  group : Group
  groupClosed : Prop
  groupClosedTerm : groupClosed

structure GroupHomomorphism (G H : Group) where
  map : G.carrier -> H.carrier
  respectsMultiplication : Prop
  respectsIdentity : Prop
  respectsInverse : Prop

structure GroupAdmissibleEvidence (G : Group) where
  groupViewed : GroupViewed G
  groupViewedClosed : groupViewed.groupClosed
  groupViewedClosedTerm : groupViewedClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse