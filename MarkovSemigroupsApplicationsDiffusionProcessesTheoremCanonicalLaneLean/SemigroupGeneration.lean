import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.MarkovDiffusionObjects

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure SemigroupGenerationPackage (O : MarkovDiffusionAdmittedObject) where
  generatorDefined : Prop
  resolventFamily : Prop
  fellerProperty : Prop
  coreDomain : Prop
  semigroupDetermined : Prop

structure SemigroupGenerationEvidence (O : MarkovDiffusionAdmittedObject) (P : SemigroupGenerationPackage O) where
  generatorDefinedClosed : P.generatorDefined
  resolventFamilyClosed : P.resolventFamily
  fellerPropertyClosed : P.fellerProperty
  coreDomainClosed : P.coreDomain
  semigroupDeterminedClosed : P.semigroupDetermined

def SemigroupGenerationClosed (O : MarkovDiffusionAdmittedObject) (P : SemigroupGenerationPackage O) : Prop :=
  P.generatorDefined ∧ P.resolventFamily ∧ P.fellerProperty ∧ P.coreDomain ∧ P.semigroupDetermined

theorem semigroup_generation_closed_from_evidence (O : MarkovDiffusionAdmittedObject) (P : SemigroupGenerationPackage O) (E : SemigroupGenerationEvidence O P) :
    SemigroupGenerationClosed O P := by
  exact And.intro E.generatorDefinedClosed
    (And.intro E.resolventFamilyClosed
      (And.intro E.fellerPropertyClosed
        (And.intro E.coreDomainClosed E.semigroupDeterminedClosed)))

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse
