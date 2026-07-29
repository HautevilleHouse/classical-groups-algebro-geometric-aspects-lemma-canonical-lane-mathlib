import canonicalLaneMathlib.AdmissibleClass
import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.FlagVarietyCohomology

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure SchubertCalculusPackage {G : ReductiveGroupPackage}
    {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B} where
  schubertVarieties : Type u
  schubertClasses : Type v
  basisForCohomology : Prop
  giambelliFormulas : Prop
  basisForCohomologyTerm : basisForCohomology
  giambelliFormulasTerm : giambelliFormulas

structure SchubertCalculusEvidence {G : ReductiveGroupPackage}
    {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    (S : SchubertCalculusPackage G B F) where
  basisForCohomologyClosed : S.basisForCohomology
  giambelliFormulasClosed : S.giambelliFormulas

def SchubertCalculusClosed {G : ReductiveGroupPackage}
    {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    (S : SchubertCalculusPackage G B F) : Prop :=
  S.basisForCohomology ∧ S.giambelliFormulas

theorem schubert_calculus_closed_from_evidence
    {G : ReductiveGroupPackage} {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    (S : SchubertCalculusPackage G B F)
    (E : SchubertCalculusEvidence S) : SchubertCalculusClosed S := by
  exact And.intro E.basisForCohomologyClosed E.giambelliFormulasClosed

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse