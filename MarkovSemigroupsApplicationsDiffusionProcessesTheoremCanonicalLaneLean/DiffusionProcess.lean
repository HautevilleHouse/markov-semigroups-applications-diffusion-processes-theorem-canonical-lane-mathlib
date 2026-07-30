import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure DiffusionProcessPackage where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  timeDomain : Type v
  stochasticProcess : Type w
  samplePathContinuity : Prop
  markovProperty : Prop
  infinitesimalGenerator : Prop
  transitionSemigroupCompatible : Prop
  samplePathContinuityTerm : samplePathContinuity
  markovPropertyTerm : markovProperty
  infinitesimalGeneratorTerm : infinitesimalGenerator
  transitionSemigroupCompatibleTerm : transitionSemigroupCompatible

structure DiffusionProcessEvidence (D : DiffusionProcessPackage) where
  samplePathContinuityClosed : D.samplePathContinuity
  markovPropertyClosed : D.markovProperty
  infinitesimalGeneratorClosed : D.infinitesimalGenerator
  transitionSemigroupCompatibleClosed : D.transitionSemigroupCompatible

def DiffusionProcessClosed (D : DiffusionProcessPackage) : Prop :=
  D.samplePathContinuity ∧ D.markovProperty ∧
  D.infinitesimalGenerator ∧ D.transitionSemigroupCompatible

theorem diffusion_process_closed_from_evidence (D : DiffusionProcessPackage)
    (E : DiffusionProcessEvidence D) : DiffusionProcessClosed D := by
  exact And.intro E.samplePathContinuityClosed
    (And.intro E.markovPropertyClosed
      (And.intro E.infinitesimalGeneratorClosed E.transitionSemigroupCompatibleClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
