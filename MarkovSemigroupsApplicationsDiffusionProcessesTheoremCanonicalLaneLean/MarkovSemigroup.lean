import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure MarkovSemigroupPackage where
  stateSpace : Type u
  stateTopology : TopologicalSpace stateSpace
  generatorDomain : Type v
  generatorRange : Type w
  semigroup : Type x
  semigroupProperty : Prop
  generatorDefined : Prop
  fellerProperty : Prop
  invariantMeasure : Prop
  ergodicProperty : Prop
  semigroupPropertyTerm : semigroupProperty
  generatorDefinedTerm : generatorDefined
  fellerPropertyTerm : fellerProperty
  invariantMeasureTerm : invariantMeasure
  ergodicPropertyTerm : ergodicProperty

structure MarkovSemigroupEvidence (M : MarkovSemigroupPackage) where
  semigroupPropertyClosed : M.semigroupProperty
  generatorDefinedClosed : M.generatorDefined
  fellerPropertyClosed : M.fellerProperty
  invariantMeasureClosed : M.invariantMeasure
  ergodicPropertyClosed : M.ergodicProperty

def MarkovSemigroupClosed (M : MarkovSemigroupPackage) : Prop :=
  M.semigroupProperty ∧ M.generatorDefined ∧ M.fellerProperty ∧
  M.invariantMeasure ∧ M.ergodicProperty

theorem markov_semigroup_closed_from_evidence (M : MarkovSemigroupPackage)
    (E : MarkovSemigroupEvidence M) : MarkovSemigroupClosed M := by
  exact And.intro E.semigroupPropertyClosed
    (And.intro E.generatorDefinedClosed
      (And.intro E.fellerPropertyClosed
        (And.intro E.invariantMeasureClosed E.ergodicPropertyClosed)))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
