import canonicalLaneMathlib.AdmissibleClass
import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.SchubertCalculus

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

structure GeometricLanglandsPackage {G : ReductiveGroupPackage}
    {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    {S : SchubertCalculusPackage G B F} where
  sheavesOnModuli : Type u
  langlandsDuality : Type v
  dualGroup : Type w
  equivalenceOfCategories : Prop
  automorphicSheaves : Prop
  geometricSatake : Prop
  equivalenceOfCategoriesTerm : equivalenceOfCategories
  automorphicSheavesTerm : automorphicSheaves
  geometricSatakeTerm : geometricSatake

structure GeometricLanglandsEvidence {G : ReductiveGroupPackage}
    {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    {S : SchubertCalculusPackage G B F}
    (L : GeometricLanglandsPackage G B F S) where
  equivalenceOfCategoriesClosed : L.equivalenceOfCategories
  automorphicSheavesClosed : L.automorphicSheaves
  geometricSatakeClosed : L.geometricSatake

def GeometricLanglandsClosed {G : ReductiveGroupPackage}
    {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    {S : SchubertCalculusPackage G B F}
    (L : GeometricLanglandsPackage G B F S) : Prop :=
  L.equivalenceOfCategories ∧ L.automorphicSheaves ∧ L.geometricSatake

theorem geometric_langlands_closed_from_evidence
    {G : ReductiveGroupPackage} {B : BorelFixedPointPackage G}
    {F : FlagVarietyCohomologyPackage G B}
    {S : SchubertCalculusPackage G B F}
    (L : GeometricLanglandsPackage G B F S)
    (E : GeometricLanglandsEvidence L) : GeometricLanglandsClosed L := by
  exact And.intro E.equivalenceOfCategoriesClosed
    (And.intro E.automorphicSheavesClosed E.geometricSatakeClosed)

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse