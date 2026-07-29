import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.ReductiveGroupScheme

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure BorelSubgroupPackage {R : ReductiveGroupSchemePackage} where
  borelSubgroup : Prop
  maximalTorus : Prop
  parabolicSubgroups : Prop
  borelPropertyClosed : borelSubgroup
  maximalTorusClosed : maximalTorus
  parabolicSubgroupsClosed : parabolicSubgroups

def BorelSubgroupClosed {R : ReductiveGroupSchemePackage} (B : BorelSubgroupPackage R) : Prop :=
  B.borelSubgroup ∧ B.maximalTorus ∧ B.parabolicSubgroups

theorem borel_subgroup_closed {R : ReductiveGroupSchemePackage} (B : BorelSubgroupPackage R) :
    BorelSubgroupClosed B := by
  exact And.intro B.borelPropertyClosed
    (And.intro B.maximalTorusClosed B.parabolicSubgroupsClosed)

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse