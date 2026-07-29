import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure PrimitiveGroupoid where
  carrier : Type u
  sourceMap : carrier → Type v
  targetMap : carrier → Type v
  composition : ∀ {f g : carrier}, targetMap f = sourceMap g → carrier
  unitMap : ∀ (x : carrier), carrier
  associativity : Prop
  identityLaw : Prop
  invertibility : Prop
  associativityTerm : associativity
  identityLawTerm : identityLaw
  invertibilityTerm : invertibility

structure PrimitiveSemigroupoid where
  carrier : Type u
  sourceMap : carrier → Type v
  targetMap : carrier → Type v
  composition : ∀ {f g : carrier}, targetMap f = sourceMap g → carrier
  associativity : Prop
  associativityTerm : associativity

structure PrimitiveSemigroup where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  associativity : Prop
  associativityTerm : associativity

structure PrimitiveGroup where
  carrier : Type u
  multiplication : carrier → carrier → carrier
  unit : carrier
  inverse : carrier → carrier
  associativity : Prop
  identityLaw : Prop
  inverseLaw : Prop
  associativityTerm : associativity
  identityLawTerm : identityLaw
  inverseLawTerm : inverseLaw

structure AlgebraAdmittedObject where
  groupoid : Option PrimitiveGroupoid
  semigroupoid : Option PrimitiveSemigroupoid
  semigroup : Option PrimitiveSemigroup
  group : Option PrimitiveGroup
  conclusion : groupoid.isSome ∧ semigroupoid.isSome ∧ semigroup.isSome ∧ group.isSome

structure AlgebraEndgameState where
  object : AlgebraAdmittedObject

def AlgebraWitnessClosed (O : AlgebraAdmittedObject) : Prop :=
  O.conclusion

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse