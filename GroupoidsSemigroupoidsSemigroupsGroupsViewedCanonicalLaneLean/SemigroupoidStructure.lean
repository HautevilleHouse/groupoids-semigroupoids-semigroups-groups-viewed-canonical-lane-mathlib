import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure SemigroupoidStructure (Obj : Type u) where
  Hom : Obj → Obj → Type v
  comp {a b c : Obj} : Hom a b → Hom b c → Hom a c
  assoc {a b c d : Obj} (f : Hom a b) (g : Hom b c) (h : Hom c d) : comp (comp f g) h = comp f (comp g h)

structure SemigroupoidMorphism (A B : SemigroupoidStructure) where
  onObjects : A.Obj → B.Obj
  onHoms {a b : A.Obj} : A.Hom a b → B.Hom (onObjects a) (onObjects b)
  respectsComp {a b c : A.Obj} (f : A.Hom a b) (g : A.Hom b c) :
    onHoms (A.comp f g) = B.comp (onHoms f) (onHoms g)

def SemigroupoidClosed (A : SemigroupoidStructure) : Prop :=
  ∀ (a b : A.Obj) (f g : A.Hom a b), f = g

structure SemigroupoidAdmissibleClass (Obj : Type u) extends AdmissibleClass where
  semigroupoid : SemigroupoidStructure Obj

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse