import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.InfinitesimalGenerator

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure DiffusionProcessConstructionPackage where
  stateSpace : Type
  generator : InfinitesimalGeneratorPackage
  samplePathContinuity : Prop
  martingaleProblem : Prop
  weakUniqueness : Prop
  strongMarkov : Prop

structure DiffusionProcessConstructionEvidence (P : DiffusionProcessConstructionPackage) where
  samplePathContinuityClosed : P.samplePathContinuity
  martingaleProblemClosed : P.martingaleProblem
  weakUniquenessClosed : P.weakUniqueness
  strongMarkovClosed : P.strongMarkov

def DiffusionProcessConstructionClosed (P : DiffusionProcessConstructionPackage) : Prop :=
  P.samplePathContinuity ∧ P.martingaleProblem ∧ P.weakUniqueness ∧ P.strongMarkov

theorem diffusion_process_construction_closed_from_evidence
    (P : DiffusionProcessConstructionPackage)
    (E : DiffusionProcessConstructionEvidence P) : DiffusionProcessConstructionClosed P := by
  exact And.intro E.samplePathContinuityClosed
    (And.intro E.martingaleProblemClosed
      (And.intro E.weakUniquenessClosed E.strongMarkovClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse