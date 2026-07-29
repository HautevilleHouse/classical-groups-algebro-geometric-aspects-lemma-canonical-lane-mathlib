import ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassicalGroupsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassicalGroupsAdmittedObject where
  space : ClassicalGroupsSpace
  algebraicGroup : Prop
  representation : Prop
  geometricAspect : Prop
  conclusion : geometricAspect

structure ClassicalGroupsEndgameState where
  object : ClassicalGroupsAdmittedObject

def ClassicalGroupsWitnessClosed (O : ClassicalGroupsAdmittedObject) : Prop :=
  O.geometricAspect

end ClassicalGroupsAlgebroGeometricAspectsLemmaCanonicalLaneLean
end HautevilleHouse
