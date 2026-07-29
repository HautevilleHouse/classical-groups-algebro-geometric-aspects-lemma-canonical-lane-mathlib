import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure MomentMapPackage {G : Type u} [Group G] [LieGroup G] where
  symplecticManifold : Type v
  symplecticForm : SymplecticForm symplecticManifold
  hamiltonianAction : Action G symplecticManifold
  momentMap : symplecticManifold → LieAlgebra G
  equivariant : Prop
  poissonCommutes : Prop
  convexityTheorem : Prop

structure MomentMapEvidence {G : Type u} [Group G] [LieGroup G] (M : MomentMapPackage G) where
  equivariantClosed : M.equivariant
  poissonCommutesClosed : M.poissonCommutes
  convexityTheoremClosed : M.convexityTheorem

def MomentMapClosed {G : Type u} [Group G] [LieGroup G] (M : MomentMapPackage G) : Prop :=
  M.equivariant ∧ M.poissonCommutes ∧ M.convexityTheorem

theorem moment_map_closed_from_evidence
    {G : Type u} [Group G] [LieGroup G] (M : MomentMapPackage G) (E : MomentMapEvidence M) :
    MomentMapClosed M := by
  exact And.intro E.equivariantClosed
    (And.intro E.poissonCommutesClosed E.convexityTheoremClosed)

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse