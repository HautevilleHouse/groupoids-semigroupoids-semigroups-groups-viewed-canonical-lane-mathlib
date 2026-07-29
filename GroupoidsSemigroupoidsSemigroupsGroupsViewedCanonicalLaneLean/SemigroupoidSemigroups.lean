import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure Semigroupoid where
  carrier : Type
  composition : carrier -> carrier -> carrier -> carrier
  associativity : Prop

structure Semigroup where
  carrier : Type
  multiplication : carrier -> carrier -> carrier
  associativity : Prop

structure SemigroupoidToSemigroup (S : Semigroupoid) (G : Semigroup) where
  map : S.carrier -> G.carrier
  respectsComposition : Prop
  isBijection : Prop

structure SemigroupAdmissibleEvidence where
  semigroup : Semigroup
  semigroupClosed : Prop
  semigroupClosedTerm : semigroupClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse

