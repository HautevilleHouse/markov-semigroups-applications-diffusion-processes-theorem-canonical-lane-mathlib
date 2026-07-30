import MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean.MarkovSemigroups

namespace HautevilleHouse
namespace MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  markovDiffusionObject : String
  classicalBoundary : String
  markovDiffusionConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "MarkovSemigroupsApplicationsDiffusionProcessesTheorem",
  theoremName := "Markov Semigroups Applications Diffusion Processes Theorem",
  markovDiffusionObject := "MarkovDiffusionAdmittedObject",
  classicalBoundary := "classical boundary carried by FormalizationCertificate.theoremBoundaryOpen",
  markovDiffusionConstrainedStatement := "Markov semigroup closure under diffusion operator, invariant measure, and ergodicity",
  certificateLane := "markov_diffusion_constrained",
  carriedRemainder := "classical source boundary carried by FormalizationCertificate"
}

end MarkovSemigroupsApplicationsDiffusionProcessesTheoremCanonicalLaneLean
end HautevilleHouse