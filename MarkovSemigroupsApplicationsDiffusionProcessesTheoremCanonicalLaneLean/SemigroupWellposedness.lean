import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.DiffusionGenerator

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure SemigroupWellposednessPackage {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} where
  semigroup : ℝ → (MarkovKernelPackage.stateSpace M → ℝ) → (MarkovKernelPackage.stateSpace M → ℝ)
  semigroupProperty : Prop
  contractionProperty : Prop
  strongContinuity : Prop
  generatorAgreement : Prop

structure SemigroupWellposednessEvidence {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} (W : SemigroupWellposednessPackage M G) where
  semigroupPropertyClosed : W.semigroupProperty
  contractionPropertyClosed : W.contractionProperty
  strongContinuityClosed : W.strongContinuity
  generatorAgreementClosed : W.generatorAgreement

def SemigroupWellposednessClosed {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} (W : SemigroupWellposednessPackage M G) : Prop :=
  W.semigroupProperty ∧ W.contractionProperty ∧ W.strongContinuity ∧ W.generatorAgreement

theorem semigroup_wellposedness_closed_from_evidence {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} (W : SemigroupWellposednessPackage M G)
    (E : SemigroupWellposednessEvidence W) : SemigroupWellposednessClosed W := by
  exact And.intro E.semigroupPropertyClosed
    (And.intro E.contractionPropertyClosed
      (And.intro E.strongContinuityClosed E.generatorAgreementClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
