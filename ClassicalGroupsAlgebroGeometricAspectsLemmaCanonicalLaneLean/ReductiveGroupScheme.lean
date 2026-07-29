import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure ReductiveGroupSchemePackage where
  groupScheme : Type
  reductiveProperty : Prop
  flagVariety : Prop
  weylGroupAction : Prop
  reductivePropertyClosed : reductiveProperty
  flagVarietyClosed : flagVariety
  weylGroupActionClosed : weylGroupAction

def ReductiveGroupSchemeClosed (R : ReductiveGroupSchemePackage) : Prop :=
  R.reductiveProperty ∧ R.flagVariety ∧ R.weylGroupAction

theorem reductive_group_scheme_closed (R : ReductiveGroupSchemePackage) :
    ReductiveGroupSchemeClosed R := by
  exact And.intro R.reductivePropertyClosed
    (And.intro R.flagVarietyClosed R.weylGroupActionClosed)

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse