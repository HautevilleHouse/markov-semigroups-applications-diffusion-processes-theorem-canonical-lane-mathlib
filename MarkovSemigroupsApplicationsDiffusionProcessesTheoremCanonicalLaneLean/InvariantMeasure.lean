import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.SemigroupWellposedness

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure InvariantMeasurePackage {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G} where
  measure : MeasureTheory.Measure (MarkovKernelPackage.stateSpace M)
  invariantProperty : Prop
  ergodicityProperty : Prop

structure InvariantMeasureEvidence {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G}
    (I : InvariantMeasurePackage M G W) where
  invariantPropertyClosed : I.invariantProperty
  ergodicityPropertyClosed : I.ergodicityProperty

def InvariantMeasureClosed {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G}
    (I : InvariantMeasurePackage M G W) : Prop :=
  I.invariantProperty ∧ I.ergodicityProperty

theorem invariant_measure_closed_from_evidence {M : MarkovKernelPackage}
    {G : DiffusionGeneratorPackage M} {W : SemigroupWellposednessPackage M G}
    (I : InvariantMeasurePackage M G W) (E : InvariantMeasureEvidence I) :
    InvariantMeasureClosed I := by
  exact And.intro E.invariantPropertyClosed E.ergodicityPropertyClosed

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
