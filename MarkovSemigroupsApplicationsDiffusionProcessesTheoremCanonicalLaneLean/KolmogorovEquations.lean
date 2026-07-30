import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.DiffusionProcess

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure KolmogorovEquationsPackage {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} (D : DiffusionProcessPackage F) where
  forwardEquation : Prop
  backwardEquation : Prop
  transitionDensity : Type u
  parabolicPDERegularity : Prop
  uniquenessOfSolutions : Prop
  connectionToSemigroup : Prop

structure KolmogorovEquationsEvidence {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    (K : KolmogorovEquationsPackage D) where
  forwardEquationClosed : K.forwardEquation
  backwardEquationClosed : K.backwardEquation
  parabolicPDERegularityClosed : K.parabolicPDERegularity
  uniquenessOfSolutionsClosed : K.uniquenessOfSolutions
  connectionToSemigroupClosed : K.connectionToSemigroup

def KolmogorovEquationsClosed {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    (K : KolmogorovEquationsPackage D) : Prop :=
  K.forwardEquation ∧ K.backwardEquation ∧ K.parabolicPDERegularity ∧
  K.uniquenessOfSolutions ∧ K.connectionToSemigroup

theorem kolmogorov_equations_closed_from_evidence {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    (K : KolmogorovEquationsPackage D) (E : KolmogorovEquationsEvidence K) :
    KolmogorovEquationsClosed K := by
  exact And.intro E.forwardEquationClosed
    (And.intro E.backwardEquationClosed
      (And.intro E.parabolicPDERegularityClosed
        (And.intro E.uniquenessOfSolutionsClosed E.connectionToSemigroupClosed)))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse