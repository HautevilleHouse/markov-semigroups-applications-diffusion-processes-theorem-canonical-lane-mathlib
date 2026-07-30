import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure MarkovKernelPackage where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  measurableStructure : MeasurableSpace stateSpace
  transitionKernel : stateSpace → Set (MeasurableSpace stateSpace) → ℝ
  kernelProperties : Prop
  fellerProperty : Prop

structure MarkovKernelEvidence (M : MarkovKernelPackage) where
  kernelPropertiesClosed : M.kernelProperties
  fellerPropertyClosed : M.fellerProperty

def MarkovKernelClosed (M : MarkovKernelPackage) : Prop :=
  M.kernelProperties ∧ M.fellerProperty

theorem markov_kernel_closed_from_evidence (M : MarkovKernelPackage)
    (E : MarkovKernelEvidence M) : MarkovKernelClosed M := by
  exact And.intro E.kernelPropertiesClosed E.fellerPropertyClosed

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
