import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Diffusion Operator Package
-/

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure DiffusionOperatorPackage (A : AdmissibleClass) where
  generator : Type u
  domain : Type v
  symbolCalculus : Prop
  hypoellipticity : Prop
  maximalDissipativity : Prop

structure DiffusionOperatorEvidence {A : AdmissibleClass}
    (D : DiffusionOperatorPackage A) where
  symbolCalculusClosed : D.symbolCalculus
  hypoellipticityClosed : D.hypoellipticity
  maximalDissipativityClosed : D.maximalDissipativity

def DiffusionOperatorClosed {A : AdmissibleClass}
    (D : DiffusionOperatorPackage A) : Prop :=
  D.symbolCalculus ∧ D.hypoellipticity ∧ D.maximalDissipativity

theorem diffusion_operator_closed_from_evidence
    {A : AdmissibleClass} (D : DiffusionOperatorPackage A)
    (E : DiffusionOperatorEvidence D) : DiffusionOperatorClosed D := by
  exact And.intro E.symbolCalculusClosed
    (And.intro E.hypoellipticityClosed E.maximalDissipativityClosed)

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse