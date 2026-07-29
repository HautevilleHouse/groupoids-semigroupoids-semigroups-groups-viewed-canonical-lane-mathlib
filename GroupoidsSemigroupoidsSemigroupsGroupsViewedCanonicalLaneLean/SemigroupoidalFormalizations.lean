import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.SemigroupsSemigroupsSemigroupsGateLemmas

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure SemigroupoidPackage where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ {a b c : objects}, morphisms a b → morphisms b c → morphisms a c
  associativity : ∀ {a b c d : objects} (f : morphisms a b) (g : morphisms b c) (h : morphisms c d),
    composition f (composition g h) = composition (composition f g) h

structure SemigroupoidEvidence (P : SemigroupoidPackage) where
  associativityClosed : ∀ {a b c d : P.objects} (f : P.morphisms a b) (g : P.morphisms b c) (h : P.morphisms c d),
    P.composition f (P.composition g h) = P.composition (P.composition f g) h

def SemigroupoidClosed (P : SemigroupoidPackage) : Prop :=
  ∀ {a b c d : P.objects} (f : P.morphisms a b) (g : P.morphisms b c) (h : P.morphisms c d),
    P.composition f (P.composition g h) = P.composition (P.composition f g) h

theorem semigroupoid_closed_from_evidence (P : SemigroupoidPackage) (E : SemigroupoidEvidence P) : SemigroupoidClosed P :=
  E.associativityClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse
