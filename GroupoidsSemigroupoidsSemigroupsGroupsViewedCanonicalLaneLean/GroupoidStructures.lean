import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure GroupoidObject where
  carrier : Type
  identity : carrier -> carrier
  composition : carrier -> carrier -> carrier -> carrier
  associativity : Prop
  identityProperty : Prop
  invertibility : Prop

structure GroupoidMorphism (A B : GroupoidObject) where
  map : A.carrier -> B.carrier
  respectsComposition : Prop
  respectsIdentity : Prop

structure GroupoidCategory where
  objects : Type
  morphisms : GroupoidObject -> GroupoidObject -> Type
  identityMorphism : (A : objects) -> morphisms A A
  composition : {A B C : objects} -> morphisms A B -> morphisms B C -> morphisms A C
  associativity : Prop
  identityProperty : Prop

structure GroupoidAdmissibleEvidence where
  groupoidCategory : GroupoidCategory
  groupoidCategoryClosed : Prop
  groupoidCategoryClosedTerm : groupoidCategoryClosed

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse

