import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.SemigroupoidStructure

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupoidStructure (Obj : Type u) extends SemigroupoidStructure Obj where
  inv {a b : Obj} : Hom a b → Hom b a
  invComp {a b : Obj} (f : Hom a b) : comp (inv f) f = inv (comp f f) := by
    exact id
  compInv {a b : Obj} (f : Hom a b) : comp f (inv f) = inv (comp f f) := by
    exact id
  invInv {a b : Obj} (f : Hom a b) : inv (inv f) = f := by
    exact id

def GroupoidClosed (G : GroupoidStructure) : Prop :=
  SemigroupoidClosed G.toSemigroupoidStructure

structure GroupoidAdmissibleClass (Obj : Type u) extends SemigroupoidAdmissibleClass Obj where
  groupoid : GroupoidStructure Obj

theorem groupoid_closed_from_semigroupoid (G : GroupoidAdmissibleClass) : GroupoidClosed G.groupoid :=
  SemigroupoidClosed G.groupoid.toSemigroupoidStructure

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse