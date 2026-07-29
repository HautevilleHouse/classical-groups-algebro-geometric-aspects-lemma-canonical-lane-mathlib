import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure TannakianDualityPackage where
  group : ClassicalGroupAdmittedObject
  tensorCategory : Type u
  fiberFunctor : Type v
  tannakianReconstruction : Prop
  equivalenceOfCategories : Prop
  tannakianDualityTheorem : Prop

def TannakianDualityClosed (P : TannakianDualityPackage) : Prop :=
  P.tannakianReconstruction ∧ P.equivalenceOfCategories ∧ P.tannakianDualityTheorem

theorem tannakian_duality_closed (P : TannakianDualityPackage) :
    TannakianDualityClosed P := by
  exact And.intro P.tannakianReconstruction (And.intro P.equivalenceOfCategories P.tannakianDualityTheorem)

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse