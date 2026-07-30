import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MarkovDiffusionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MarkovDiffusionAdmittedObject where
  space : MarkovDiffusionSpace
  stateSpaceModel : Prop
  semigroupGenerated : Prop
  diffusionProcessDefined : Prop
  limitModel : Type
  limitTopology : TopologicalSpace limitModel
  convergenceToEquilibrium : Prop
  conclusion : convergenceToEquilibrium

structure MarkovDiffusionEndgameState where
  object : MarkovDiffusionAdmittedObject

def MarkovDiffusionWitnessClosed (O : MarkovDiffusionAdmittedObject) : Prop := 
  O.convergenceToEquilibrium

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
