import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure BruhatDecompositionPackage {G : Type u} [Group G] [TitsSystem G] where
  weylGroup : Type v
  weylGroupGroup : Group weylGroup
  bruhatCells : G → weylGroup
  cellDecomposition : Prop
  closureRelations : Prop
  dimensionFormula : Prop
  smoothProjectiveVariety : Prop

structure BruhatDecompositionEvidence {G : Type u} [Group G] [TitsSystem G] (B : BruhatDecompositionPackage G) where
  cellDecompositionClosed : B.cellDecomposition
  closureRelationsClosed : B.closureRelations
  dimensionFormulaClosed : B.dimensionFormula
  smoothProjectiveVarietyClosed : B.smoothProjectiveVariety

def BruhatDecompositionClosed {G : Type u} [Group G] [TitsSystem G] (B : BruhatDecompositionPackage G) : Prop :=
  B.cellDecomposition ∧ B.closureRelations ∧
  B.dimensionFormula ∧ B.smoothProjectiveVariety

theorem bruhat_decomposition_closed_from_evidence
    {G : Type u} [Group G] [TitsSystem G] (B : BruhatDecompositionPackage G) (E : BruhatDecompositionEvidence B) :
    BruhatDecompositionClosed B := by
  exact And.intro E.cellDecompositionClosed
    (And.intro E.closureRelationsClosed
      (And.intro E.dimensionFormulaClosed E.smoothProjectiveVarietyClosed))

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse