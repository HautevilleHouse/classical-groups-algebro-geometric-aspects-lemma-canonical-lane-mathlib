import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure AlgebraicGroupVarietyPackage where
  group : Type u
  varietyStructure : Type v
  groupLaw : Type w
  algebraicGroupLaw : Prop
  underlyingVarietySmooth : Prop
  groupOperationRegular : Prop
  inverseRegular : Prop

structure AlgebraicGroupVarietyEvidence (P : AlgebraicGroupVarietyPackage) where
  algebraicGroupLawClosed : P.algebraicGroupLaw
  underlyingVarietySmoothClosed : P.underlyingVarietySmooth
  groupOperationRegularClosed : P.groupOperationRegular
  inverseRegularClosed : P.inverseRegular

def AlgebraicGroupVarietyClosed (P : AlgebraicGroupVarietyPackage) : Prop :=
  P.algebraicGroupLaw ∧ P.underlyingVarietySmooth ∧
  P.groupOperationRegular ∧ P.inverseRegular

theorem algebraic_group_variety_closed_from_evidence
    (P : AlgebraicGroupVarietyPackage) (E : AlgebraicGroupVarietyEvidence P) :
    AlgebraicGroupVarietyClosed P := by
  exact And.intro E.algebraicGroupLawClosed
    (And.intro E.underlyingVarietySmoothClosed
      (And.intro E.groupOperationRegularClosed E.inverseRegularClosed))

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse