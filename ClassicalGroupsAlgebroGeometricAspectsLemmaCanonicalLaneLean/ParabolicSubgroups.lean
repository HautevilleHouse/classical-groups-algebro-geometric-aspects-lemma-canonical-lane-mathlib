import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure ParabolicSubgroupPackage {G : Type u} [Group G] where
  borelSubgroup : Subgroup G
  parabolicSubgroups : Set (Subgroup G)
  levyDecomposition : Prop
  unipotentRadical : Prop
  flagVariety : Type v
  flagVarietyTopology : TopologicalSpace flagVariety
  parabolicSubgroupsClosedUnderConjugation : Prop
  borelSubgroupExists : Prop

structure ParabolicSubgroupEvidence {G : Type u} [Group G] (P : ParabolicSubgroupPackage G) where
  levyDecompositionClosed : P.levyDecomposition
  unipotentRadicalClosed : P.unipotentRadical
  parabolicSubgroupsClosedUnderConjugationClosed : P.parabolicSubgroupsClosedUnderConjugation
  borelSubgroupExistsClosed : P.borelSubgroupExists

def ParabolicSubgroupClosed {G : Type u} [Group G] (P : ParabolicSubgroupPackage G) : Prop :=
  P.levyDecomposition ∧ P.unipotentRadical ∧
  P.parabolicSubgroupsClosedUnderConjugation ∧ P.borelSubgroupExists

theorem parabolic_subgroup_closed_from_evidence
    {G : Type u} [Group G] (P : ParabolicSubgroupPackage G) (E : ParabolicSubgroupEvidence P) :
    ParabolicSubgroupClosed P := by
  exact And.intro E.levyDecompositionClosed
    (And.intro E.unipotentRadicalClosed
      (And.intro E.parabolicSubgroupsClosedUnderConjugationClosed
        E.borelSubgroupExistsClosed))

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse