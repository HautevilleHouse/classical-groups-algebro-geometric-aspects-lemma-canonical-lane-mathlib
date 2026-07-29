import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure UnitaryGroupClassificationPackage where
  unitaryGroup : ClassicalGroupAdmittedObject
  compactRealForm : Prop
  maximalTorus : Prop
  rootSystem : Prop
  fundamentalWeights : Prop
  classificationTheorem : Prop

def UnitaryGroupClassificationClosed (P : UnitaryGroupClassificationPackage) : Prop :=
  P.compactRealForm ∧ P.maximalTorus ∧ P.rootSystem ∧ P.fundamentalWeights ∧ P.classificationTheorem

theorem unitary_group_classification_closed (P : UnitaryGroupClassificationPackage) :
    UnitaryGroupClassificationClosed P := by
  exact And.intro P.compactRealForm (And.intro P.maximalTorus (And.intro P.rootSystem (And.intro P.fundamentalWeights P.classificationTheorem)))

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse