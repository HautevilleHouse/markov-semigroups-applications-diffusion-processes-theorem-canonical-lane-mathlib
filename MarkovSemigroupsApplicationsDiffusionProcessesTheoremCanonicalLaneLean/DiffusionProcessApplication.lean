import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.InvariantMeasure

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure DiffusionProcessApplicationPackage {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G}
    {I : InvariantMeasurePackage M G W} where
  processSpace : Type u
  processTopology : TopologicalSpace processSpace
  diffusionRealization : Prop
  ergodicTheoremApplication : Prop
  convergenceInLaw : Prop

structure DiffusionProcessApplicationEvidence {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G}
    {I : InvariantMeasurePackage M G W}
    (A : DiffusionProcessApplicationPackage M G W I) where
  diffusionRealizationClosed : A.diffusionRealization
  ergodicTheoremApplicationClosed : A.ergodicTheoremApplication
  convergenceInLawClosed : A.convergenceInLaw

def DiffusionProcessApplicationClosed {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G}
    {I : InvariantMeasurePackage M G W}
    (A : DiffusionProcessApplicationPackage M G W I) : Prop :=
  A.diffusionRealization ∧ A.ergodicTheoremApplication ∧ A.convergenceInLaw

theorem diffusion_process_application_closed_from_evidence
    {M : MarkovKernelPackage} {G : DiffusionGeneratorPackage M}
    {W : SemigroupWellposednessPackage M G} {I : InvariantMeasurePackage M G W}
    (A : DiffusionProcessApplicationPackage M G W I)
    (E : DiffusionProcessApplicationEvidence A) : DiffusionProcessApplicationClosed A := by
  exact And.intro E.diffusionRealizationClosed
    (And.intro E.ergodicTheoremApplicationClosed E.convergenceInLawClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
