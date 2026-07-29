import GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean

structure SemigroupClassificationPackage {G : PrimitiveGroupoid} {Sgpd : PrimitiveSemigroupoid} {Sg : PrimitiveSemigroup} {Gr : PrimitiveGroup} where
  groupoidSemigroupoidBridge : Prop
  semigroupoidSemigroupBridge : Prop
  semigroupGroupBridge : Prop
  classificationComplete : Prop

structure SemigroupClassificationEvidence {G : PrimitiveGroupoid} {Sgpd : PrimitiveSemigroupoid} {Sg : PrimitiveSemigroup} {Gr : PrimitiveGroup}
    (C : SemigroupClassificationPackage G Sgpd Sg Gr) where
  groupoidSemigroupoidBridgeClosed : C.groupoidSemigroupoidBridge
  semigroupoidSemigroupBridgeClosed : C.semigroupoidSemigroupBridge
  semigroupGroupBridgeClosed : C.semigroupGroupBridge
  classificationCompleteClosed : C.classificationComplete

def SemigroupClassificationClosed {G : PrimitiveGroupoid} {Sgpd : PrimitiveSemigroupoid} {Sg : PrimitiveSemigroup} {Gr : PrimitiveGroup}
    (C : SemigroupClassificationPackage G Sgpd Sg Gr) : Prop :=
  C.groupoidSemigroupoidBridge ∧ C.semigroupoidSemigroupBridge ∧
  C.semigroupGroupBridge ∧ C.classificationComplete

theorem semigroup_classification_closed_from_evidence
    {G : PrimitiveGroupoid} {Sgpd : PrimitiveSemigroupoid} {Sg : PrimitiveSemigroup} {Gr : PrimitiveGroup}
    (C : SemigroupClassificationPackage G Sgpd Sg Gr) (E : SemigroupClassificationEvidence C) :
    SemigroupClassificationClosed C := by
  exact And.intro E.groupoidSemigroupoidBridgeClosed
    (And.intro E.semigroupoidSemigroupBridgeClosed
      (And.intro E.semigroupGroupBridgeClosed E.classificationCompleteClosed))

end GroupoidsSemigroupoidsSemigroupsGroupsViewedCanonicalLaneLean
end HautevilleHouse