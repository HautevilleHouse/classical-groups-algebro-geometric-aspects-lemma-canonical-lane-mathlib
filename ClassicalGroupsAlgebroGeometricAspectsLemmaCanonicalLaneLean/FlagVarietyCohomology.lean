import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.BorelSubgroup

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure FlagVarietyCohomologyPackage {R : ReductiveGroupSchemePackage}
    {B : BorelSubgroupPackage R} where
  cohomologyRing : Prop
  schubertCalculus : Prop
  characteristicClasses : Prop
  cohomologyRingClosed : cohomologyRing
  schubertCalculusClosed : schubertCalculus
  characteristicClassesClosed : characteristicClasses

def FlagVarietyCohomologyClosed {R : ReductiveGroupSchemePackage}
    {B : BorelSubgroupPackage R} (F : FlagVarietyCohomologyPackage R B) : Prop :=
  F.cohomologyRing ∧ F.schubertCalculus ∧ F.characteristicClasses

theorem flag_variety_cohomology_closed {R : ReductiveGroupSchemePackage}
    {B : BorelSubgroupPackage R} (F : FlagVarietyCohomologyPackage R B) :
    FlagVarietyCohomologyClosed F := by
  exact And.intro F.cohomologyRingClosed
    (And.intro F.schubertCalculusClosed F.characteristicClassesClosed)

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse