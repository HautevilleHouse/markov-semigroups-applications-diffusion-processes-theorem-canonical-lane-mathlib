import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.SemigroupGenerator

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure FellerSemigroupPackage (G : SemigroupGeneratorPackage) where
  transitionFamily : ℝ → G.stateSpace → Set (G.stateSpace → ℝ)
  positivityPreservation : Prop
  identityAtZero : Prop
  semigroupProperty : Prop
  strongContinuity : Prop
  generatorMatchesInfinitesimal : Prop

structure FellerSemigroupEvidence {G : SemigroupGeneratorPackage}
    (F : FellerSemigroupPackage G) where
  positivityPreservationClosed : F.positivityPreservation
  identityAtZeroClosed : F.identityAtZero
  semigroupPropertyClosed : F.semigroupProperty
  strongContinuityClosed : F.strongContinuity
  generatorMatchesInfinitesimalClosed : F.generatorMatchesInfinitesimal

def FellerSemigroupClosed {G : SemigroupGeneratorPackage} (F : FellerSemigroupPackage G) : Prop :=
  F.positivityPreservation ∧ F.identityAtZero ∧ F.semigroupProperty ∧
  F.strongContinuity ∧ F.generatorMatchesInfinitesimal

theorem feller_semigroup_closed_from_evidence {G : SemigroupGeneratorPackage}
    (F : FellerSemigroupPackage G) (E : FellerSemigroupEvidence F) : FellerSemigroupClosed F := by
  exact And.intro E.positivityPreservationClosed
    (And.intro E.identityAtZeroClosed
      (And.intro E.semigroupPropertyClosed
        (And.intro E.strongContinuityClosed E.generatorMatchesInfinitesimalClosed)))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse