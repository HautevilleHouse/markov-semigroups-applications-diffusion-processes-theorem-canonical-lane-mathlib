import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.KolmogorovEquations

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure ErgodicityStationarityPackage {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    (K : KolmogorovEquationsPackage D) where
  invariantMeasureExists : Prop
  uniqueInvariantMeasure : Prop
  ergodicTheorem : Prop
  exponentialMixing : Prop
  spectralGap : Prop
  convergenceToStationarity : Prop

structure ErgodicityStationarityEvidence {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    {K : KolmogorovEquationsPackage D}
    (E : ErgodicityStationarityPackage K) where
  invariantMeasureExistsClosed : E.invariantMeasureExists
  uniqueInvariantMeasureClosed : E.uniqueInvariantMeasure
  ergodicTheoremClosed : E.ergodicTheorem
  exponentialMixingClosed : E.exponentialMixing
  spectralGapClosed : E.spectralGap
  convergenceToStationarityClosed : E.convergenceToStationarity

def ErgodicityStationarityClosed {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    {K : KolmogorovEquationsPackage D}
    (E : ErgodicityStationarityPackage K) : Prop :=
  E.invariantMeasureExists ∧ E.uniqueInvariantMeasure ∧ E.ergodicTheorem ∧
  E.exponentialMixing ∧ E.spectralGap ∧ E.convergenceToStationarity

theorem ergodicity_stationarity_closed_from_evidence {G : SemigroupGeneratorPackage}
    {F : FellerSemigroupPackage G} {D : DiffusionProcessPackage F}
    {K : KolmogorovEquationsPackage D}
    (E : ErgodicityStationarityPackage K)
    (Ev : ErgodicityStationarityEvidence E) : ErgodicityStationarityClosed E := by
  exact And.intro Ev.invariantMeasureExistsClosed
    (And.intro Ev.uniqueInvariantMeasureClosed
      (And.intro Ev.ergodicTheoremClosed
        (And.intro Ev.exponentialMixingClosed
          (And.intro Ev.spectralGapClosed Ev.convergenceToStationarityClosed))))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse