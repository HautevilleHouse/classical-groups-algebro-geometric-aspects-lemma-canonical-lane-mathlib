import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassicalGroupsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse
