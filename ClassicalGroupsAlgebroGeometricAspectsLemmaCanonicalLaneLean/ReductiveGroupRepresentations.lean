import canonicalLaneMathlib.AdmissibleClass
import Mathlib.RepresentationTheory.Rep

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure ReductiveGroupRepresentationsPackage where
  group : Type u
  categoryOfReps : Type v
  semisimpleCategory : Prop
  charactersDefined : Prop
  highestWeightTheory : Prop
  tensorProductDecomposition : Prop

structure ReductiveGroupRepresentationsEvidence (P : ReductiveGroupRepresentationsPackage) where
  semisimpleCategoryClosed : P.semisimpleCategory
  charactersDefinedClosed : P.charactersDefined
  highestWeightTheoryClosed : P.highestWeightTheory
  tensorProductDecompositionClosed : P.tensorProductDecomposition

def ReductiveGroupRepresentationsClosed (P : ReductiveGroupRepresentationsPackage) : Prop :=
  P.semisimpleCategory ∧ P.charactersDefined ∧
  P.highestWeightTheory ∧ P.tensorProductDecomposition

theorem reductive_group_representations_closed_from_evidence
    (P : ReductiveGroupRepresentationsPackage) (E : ReductiveGroupRepresentationsEvidence P) :
    ReductiveGroupRepresentationsClosed P := by
  exact And.intro E.semisimpleCategoryClosed
    (And.intro E.charactersDefinedClosed
      (And.intro E.highestWeightTheoryClosed E.tensorProductDecompositionClosed))

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse