import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure SemigroupGeneratorPackage where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  generatorDomain : Set (stateSpace → ℝ)
  generatorAction : (stateSpace → ℝ) → (stateSpace → ℝ)
  coreDomain : Set (stateSpace → ℝ)
  closedExtension : Prop
  coreDenseInClosedExtension : Prop
  dissipativityInequality : Prop
  rangeCondition : Prop

structure SemigroupGeneratorEvidence (G : SemigroupGeneratorPackage) where
  closedExtensionClosed : G.closedExtension
  coreDenseInClosedExtensionClosed : G.coreDenseInClosedExtension
  dissipativityInequalityClosed : G.dissipativityInequality
  rangeConditionClosed : G.rangeCondition

def SemigroupGeneratorClosed (G : SemigroupGeneratorPackage) : Prop :=
  G.closedExtension ∧ G.coreDenseInClosedExtension ∧ G.dissipativityInequality ∧ G.rangeCondition

theorem semigroup_generator_closed_from_evidence (G : SemigroupGeneratorPackage)
    (E : SemigroupGeneratorEvidence G) : SemigroupGeneratorClosed G := by
  exact And.intro E.closedExtensionClosed
    (And.intro E.coreDenseInClosedExtensionClosed
      (And.intro E.dissipativityInequalityClosed E.rangeConditionClosed))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse