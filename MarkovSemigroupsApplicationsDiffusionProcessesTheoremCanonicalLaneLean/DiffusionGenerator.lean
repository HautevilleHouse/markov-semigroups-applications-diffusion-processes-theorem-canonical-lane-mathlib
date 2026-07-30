import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.MarkovKernel

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure DiffusionGeneratorPackage {M : MarkovKernelPackage} where
  domain : Set (MarkovKernelPackage.stateSpace M → ℝ)
  operator : (MarkovKernelPackage.stateSpace M → ℝ) → (MarkovKernelPackage.stateSpace M → ℝ)
  coreProperty : Prop
  generatorRelation : Prop

structure DiffusionGeneratorEvidence {M : MarkovKernelPackage}
    (G : DiffusionGeneratorPackage M) where
  corePropertyClosed : G.coreProperty
  generatorRelationClosed : G.generatorRelation

def DiffusionGeneratorClosed {M : MarkovKernelPackage}
    (G : DiffusionGeneratorPackage M) : Prop :=
  G.coreProperty ∧ G.generatorRelation

theorem diffusion_generator_closed_from_evidence {M : MarkovKernelPackage}
    (G : DiffusionGeneratorPackage M) (E : DiffusionGeneratorEvidence G) :
    DiffusionGeneratorClosed G := by
  exact And.intro E.corePropertyClosed E.generatorRelationClosed

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
