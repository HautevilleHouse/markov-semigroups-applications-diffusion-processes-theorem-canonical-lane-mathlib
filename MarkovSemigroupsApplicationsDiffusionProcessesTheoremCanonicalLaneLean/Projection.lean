import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def markovDiffusionProjection : Projection MarkovDiffusionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem markov_diffusion_projection_idempotent (x : MarkovDiffusionEndgameState) :
    markovDiffusionProjection.toFun (markovDiffusionProjection.toFun x) = markovDiffusionProjection.toFun x := by
  exact markovDiffusionProjection.idempotent x

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse