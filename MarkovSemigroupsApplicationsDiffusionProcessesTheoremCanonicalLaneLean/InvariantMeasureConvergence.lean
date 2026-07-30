import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.DiffusionProcess

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure InvariantMeasurePackage (O : MarkovDiffusionAdmittedObject) (S : SemigroupGenerationPackage O) (D : DiffusionProcessPackage O S) where
  invariantMeasure : Prop
  ergodicity : Prop
  convergenceRate : Prop
  mixingTime : Prop
  lawOfLargeNumbers : Prop

structure InvariantMeasureEvidence (O : MarkovDiffusionAdmittedObject) (S : SemigroupGenerationPackage O) (D : DiffusionProcessPackage O S) (I : InvariantMeasurePackage O S D) where
  invariantMeasureClosed : I.invariantMeasure
  ergodicityClosed : I.ergodicity
  convergenceRateClosed : I.convergenceRate
  mixingTimeClosed : I.mixingTime
  lawOfLargeNumbersClosed : I.lawOfLargeNumbers

def InvariantMeasureClosed (O : MarkovDiffusionAdmittedObject) (S : SemigroupGenerationPackage O) (D : DiffusionProcessPackage O S) (I : InvariantMeasurePackage O S D) : Prop :=
  I.invariantMeasure ∧ I.ergodicity ∧ I.convergenceRate ∧ I.mixingTime ∧ I.lawOfLargeNumbers

theorem invariant_measure_closed_from_evidence (O : MarkovDiffusionAdmittedObject) (S : SemigroupGenerationPackage O) (D : DiffusionProcessPackage O S) (I : InvariantMeasurePackage O S D) (E : InvariantMeasureEvidence O S D I) :
    InvariantMeasureClosed O S D I := by
  exact And.intro E.invariantMeasureClosed
    (And.intro E.ergodicityClosed
      (And.intro E.convergenceRateClosed
        (And.intro E.mixingTimeClosed E.lawOfLargeNumbersClosed)))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
