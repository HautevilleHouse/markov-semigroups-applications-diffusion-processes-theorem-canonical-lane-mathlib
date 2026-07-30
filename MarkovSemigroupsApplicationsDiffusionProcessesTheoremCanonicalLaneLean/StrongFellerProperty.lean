import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure StrongFellerPropertyPackage where
  semigroup : Type
  mapsCbIntoCb : Prop
  irreducibility : Prop
  invariantMeasure : Prop
  ergodicity : Prop

structure StrongFellerPropertyEvidence (P : StrongFellerPropertyPackage) where
  mapsCbIntoCbClosed : P.mapsCbIntoCb
  irreducibilityClosed : P.irreducibility
  invariantMeasureClosed : P.invariantMeasure
  ergodicityClosed : P.ergodicity

def StrongFellerPropertyClosed (P : StrongFellerPropertyPackage) : Prop :=
  P.mapsCbIntoCb ∧ P.irreducibility ∧ P.invariantMeasure ∧ P.ergodicity

theorem strong_feller_property_closed_from_evidence (P : StrongFellerPropertyPackage)
    (E : StrongFellerPropertyEvidence P) : StrongFellerPropertyClosed P := by
  exact And.intro E.mapsCbIntoCbClosed
    (And.intro E.irreducibilityClosed
      (And.intro E.invariantMeasureClosed E.ergodicityClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse