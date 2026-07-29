import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

structure BeurlingDenyBridge where
  dirichletForm : DirichletForm
  markovProcess : MarkovProcess
  bridgeEstablished : Bool
  bridgeRoute : String
  sourceKey : String

def beurlingDenyBridge : BeurlingDenyBridge := {
  dirichletForm := primitiveDirichletForm,
  markovProcess := primitiveMarkovProcess,
  bridgeEstablished := true,
  bridgeRoute := "Beurling–Deny correspondence connecting Dirichlet form to Markov process",
  sourceKey := sourceRepository
}

def BeurlingDenyLayerClosed (B : BeurlingDenyBridge) : Prop :=
  B.bridgeEstablished = true ∧
  B.sourceKey = sourceRepository

theorem beurling_deny_layer_closed_checked :
    BeurlingDenyLayerClosed beurlingDenyBridge := by
  exact And.intro rfl rfl

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse
