import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.SemigroupoidalFormalizations

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupPackage where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  identity : carrier
  inverse : carrier → carrier
  associativity : ∀ a b c : carrier, multiplication a (multiplication b c) = multiplication (multiplication a b) c
  identityLeft : ∀ a : carrier, multiplication identity a = a
  identityRight : ∀ a : carrier, multiplication a identity = a
  inverseLeft : ∀ a : carrier, multiplication (inverse a) a = identity
  inverseRight : ∀ a : carrier, multiplication a (inverse a) = identity

structure GroupEvidence (G : GroupPackage) where
  associativityClosed : ∀ a b c : G.carrier, G.multiplication a (G.multiplication b c) = G.multiplication (G.multiplication a b) c
  identityLeftClosed : ∀ a : G.carrier, G.multiplication G.identity a = a
  identityRightClosed : ∀ a : G.carrier, G.multiplication a G.identity = a
  inverseLeftClosed : ∀ a : G.carrier, G.multiplication (G.inverse a) a = G.identity
  inverseRightClosed : ∀ a : G.carrier, G.multiplication a (G.inverse a) = G.identity

def GroupClosed (G : GroupPackage) : Prop :=
  (∀ a b c : G.carrier, G.multiplication a (G.multiplication b c) = G.multiplication (G.multiplication a b) c) ∧
  (∀ a : G.carrier, G.multiplication G.identity a = a) ∧
  (∀ a : G.carrier, G.multiplication a G.identity = a) ∧
  (∀ a : G.carrier, G.multiplication (G.inverse a) a = G.identity) ∧
  (∀ a : G.carrier, G.multiplication a (G.inverse a) = G.identity)

theorem group_closed_from_evidence (G : GroupPackage) (E : GroupEvidence G) : GroupClosed G :=
  And.intro E.associativityClosed (And.intro E.identityLeftClosed (And.intro E.identityRightClosed (And.intro E.inverseLeftClosed E.inverseRightClosed)))

def GroupoidToGroupBridge (P : SemigroupoidPackage) (G : GroupPackage) : Prop :=
  (∀ {a b : P.objects}, Nonempty (P.morphisms a b)) ∧  -- (all objects isomorphic)
  (∀ (x : P.objects), P.morphisms x x ≃ G.carrier)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse
