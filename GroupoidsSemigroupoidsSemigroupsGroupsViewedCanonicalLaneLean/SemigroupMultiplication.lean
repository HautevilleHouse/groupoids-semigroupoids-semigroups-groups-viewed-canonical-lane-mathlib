import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure SemigroupStructure (Carrier : Type u) where
  mul : Carrier → Carrier → Carrier
  assoc (x y z : Carrier) : mul (mul x y) z = mul x (mul y z)

structure SemigroupMorphism (A B : SemigroupStructure) where
  map : A.Carrier → B.Carrier
  respectsMul (x y : A.Carrier) : map (A.mul x y) = B.mul (map x) (map y)

def SemigroupClosed (S : SemigroupStructure) : Prop :=
  ∀ (x y : S.Carrier), S.mul x y = S.mul y x

structure SemigroupAdmissibleClass (Carrier : Type u) extends AdmissibleClass where
  semigroup : SemigroupStructure Carrier

theorem semigroup_comm_implies_closed (S : SemigroupAdmissibleClass) (h : ∀ x y, S.semigroup.mul x y = S.semigroup.mul y x) : SemigroupClosed S.semigroup :=
  h

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse