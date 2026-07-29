import canonicalLaneMathlib.AdmissibleClass
import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.ReductiveGroupStructure

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure BorelFixedPointPackage {G : ReductiveGroupPackage} where
  borelSubgroup : Type u
  flagVariety : Type v
  action : G.group → borelSubgroup → borelSubgroup
  fixedPointExists : Prop
  actionTerm : action
  fixedPointExistsTerm : fixedPointExists

structure BorelFixedPointEvidence {G : ReductiveGroupPackage}
    (B : BorelFixedPointPackage G) where
  fixedPointExistsClosed : B.fixedPointExists

def BorelFixedPointClosed {G : ReductiveGroupPackage}
    (B : BorelFixedPointPackage G) : Prop :=
  B.fixedPointExists

theorem borel_fixed_point_closed_from_evidence
    {G : ReductiveGroupPackage} (B : BorelFixedPointPackage G)
    (E : BorelFixedPointEvidence B) : BorelFixedPointClosed B := by
  exact E.fixedPointExistsClosed

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse