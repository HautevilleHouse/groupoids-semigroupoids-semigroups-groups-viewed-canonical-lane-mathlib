import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.SemigroupMultiplication

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupStructure (Carrier : Type u) extends SemigroupStructure Carrier where
  e : Carrier
  inv : Carrier → Carrier
  leftId (x : Carrier) : mul e x = x
  rightId (x : Carrier) : mul x e = x
  leftInv (x : Carrier) : mul (inv x) x = e
  rightInv (x : Carrier) : mul x (inv x) = e

def GroupClosed (G : GroupStructure) : Prop :=
  SemigroupClosed G.toSemigroupStructure

structure GroupAdmissibleClass (Carrier : Type u) extends SemigroupAdmissibleClass Carrier where
  group : GroupStructure Carrier

theorem group_closed_from_semigroup (G : GroupAdmissibleClass) (h : SemigroupClosed G.semigroup) : GroupClosed G.group :=
  h

theorem group_identity_unique (G : GroupStructure) (e' : G.Carrier) (h : ∀ x : G.Carrier, G.mul e' x = x) : e' = G.e :=
  by
    calc
      e' = G.mul e' G.e := by symm; exact G.rightId e'
      _ = G.e := by
        calc
          G.mul e' G.e = G.mul (G.mul e' G.e) (G.inv (G.mul e' G.e)) := by
            symm; exact G.rightInv (G.mul e' G.e)
          _ = G.mul e' (G.mul G.e (G.inv (G.mul e' G.e))) := by
            simp [G.assoc]
          _ = G.mul e' (G.inv (G.mul e' G.e)) := by
            simp [h, G.leftId]
          _ = G.mul (G.mul e' G.e) (G.inv (G.mul e' G.e)) := by
            simp [G.assoc]
          _ = G.e := G.rightInv (G.mul e' G.e)

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse