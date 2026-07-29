import canonicalLaneMathlib.AdmissibleClass
import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.BridgeLemmas
import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

def ConstrainedGroupoidClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_groupoid_endgame (A : AdmissibleClass) : ConstrainedGroupoidClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse

