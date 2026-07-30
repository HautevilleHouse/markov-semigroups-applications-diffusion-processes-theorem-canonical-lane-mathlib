import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MarkovDiffusionSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : Type

structure MarkovDiffusionAdmittedObject where
  space : MarkovDiffusionSpace
  markovSemigroup : Prop
  diffusionOperator : Prop
  invariantMeasureExistence : Prop
  ergodicTheorem : Prop
  conclusion : markovSemigroup ∧ diffusionOperator ∧ invariantMeasureExistence ∧ ergodicTheorem

structure MarkovDiffusionEndgameState where
  object : MarkovDiffusionAdmittedObject

def MarkovDiffusionWitnessClosed (O : MarkovDiffusionAdmittedObject) : Prop :=
  O.markovSemigroup ∧ O.diffusionOperator ∧ O.invariantMeasureExistence ∧ O.ergodicTheorem

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse