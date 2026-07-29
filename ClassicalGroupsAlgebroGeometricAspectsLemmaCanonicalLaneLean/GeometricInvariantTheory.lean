import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.GIT.Basic

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure GITPackage where
  groupAction : Type u
  quotientSpace : Type v
  semistablePoints : Prop
  categoricalQuotientExists : Prop
  goodQuotientProperties : Prop
  orbitStructureAnalyzed : Prop

structure GITEvidence (P : GITPackage) where
  semistablePointsClosed : P.semistablePoints
  categoricalQuotientExistsClosed : P.categoricalQuotientExists
  goodQuotientPropertiesClosed : P.goodQuotientProperties
  orbitStructureAnalyzedClosed : P.orbitStructureAnalyzed

def GITClosed (P : GITPackage) : Prop :=
  P.semistablePoints ∧ P.categoricalQuotientExists ∧
  P.goodQuotientProperties ∧ P.orbitStructureAnalyzed

theorem git_closed_from_evidence
    (P : GITPackage) (E : GITEvidence P) : GITClosed P := by
  exact And.intro E.semistablePointsClosed
    (And.intro E.categoricalQuotientExistsClosed
      (And.intro E.goodQuotientPropertiesClosed E.orbitStructureAnalyzedClosed))

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse