import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure ReductiveGroupPackage where
  group : Type u
  topology : TopologicalSpace group
  smoothStructure : Type v
  reductive : Prop
  semisimpleRank : Prop
  maximalTorus : Type w
  rootSystem : Type x
  weylGroup : Type y
  reductiveTerm : reductive
  semisimpleRankTerm : semisimpleRank

structure ReductiveGroupEvidence (G : ReductiveGroupPackage) where
  reductiveClosed : G.reductive
  semisimpleRankClosed : G.semisimpleRank

def ReductiveGroupClosed (G : ReductiveGroupPackage) : Prop :=
  G.reductive ∧ G.semisimpleRank

theorem reductive_group_closed_from_evidence (G : ReductiveGroupPackage)
    (E : ReductiveGroupEvidence G) : ReductiveGroupClosed G := by
  exact And.intro E.reductiveClosed E.semisimpleRankClosed

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse