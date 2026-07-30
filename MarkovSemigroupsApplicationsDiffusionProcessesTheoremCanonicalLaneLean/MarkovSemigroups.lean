import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.DiffusionOperator

/-!
# Markov Semigroups Package
-/

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure MarkovSemigroupPackage {A : AdmissibleClass}
    (D : DiffusionOperatorPackage A) where
  transitionKernels : Type u
  fellerProperty : Prop
  strongContinuity : Prop
  invariantMeasure : Type v
  ergodicity : Prop

structure MarkovSemigroupEvidence {A : AdmissibleClass}
    {D : DiffusionOperatorPackage A} (M : MarkovSemigroupPackage D) where
  fellerPropertyClosed : M.fellerProperty
  strongContinuityClosed : M.strongContinuity
  ergodicityClosed : M.ergodicity

def MarkovSemigroupClosed {A : AdmissibleClass}
    {D : DiffusionOperatorPackage A} (M : MarkovSemigroupPackage D) : Prop :=
  M.fellerProperty ∧ M.strongContinuity ∧ M.ergodicity

theorem markov_semigroup_closed_from_evidence
    {A : AdmissibleClass} {D : DiffusionOperatorPackage A}
    (M : MarkovSemigroupPackage D) (E : MarkovSemigroupEvidence M) :
    MarkovSemigroupClosed M := by
  exact And.intro E.fellerPropertyClosed
    (And.intro E.strongContinuityClosed E.ergodicityClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse