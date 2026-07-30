import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.DiffusionAdmittedObject

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure InfinitesimalGeneratorPackage where
  domain : Type
  linearOperator : Type
  positiveMaximumPrinciple : Prop
  closable : Prop
  generatesSemigroup : Prop

structure InfinitesimalGeneratorEvidence (P : InfinitesimalGeneratorPackage) where
  positiveMaximumPrincipleClosed : P.positiveMaximumPrinciple
  closableClosed : P.closable
  generatesSemigroupClosed : P.generatesSemigroup

def InfinitesimalGeneratorClosed (P : InfinitesimalGeneratorPackage) : Prop :=
  P.positiveMaximumPrinciple ∧ P.closable ∧ P.generatesSemigroup

theorem infinitesimal_generator_closed_from_evidence (P : InfinitesimalGeneratorPackage)
    (E : InfinitesimalGeneratorEvidence P) : InfinitesimalGeneratorClosed P := by
  exact And.intro E.positiveMaximumPrincipleClosed
    (And.intro E.closableClosed E.generatesSemigroupClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse