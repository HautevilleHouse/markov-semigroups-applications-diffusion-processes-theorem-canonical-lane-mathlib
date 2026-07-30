import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure DiffusionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiffusionAdmittedObject where
  space : DiffusionSpace
  markovSemigroup : Type
  infinitesimalGenerator : Type
  invariantMeasure : Prop
  ergodicity : Prop
  conclusion : DiffusionBridgeClosedMarkovSemigroups

def DiffusionBridgeClosed (O : DiffusionAdmittedObject) : Prop :=
  O.conclusion

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse