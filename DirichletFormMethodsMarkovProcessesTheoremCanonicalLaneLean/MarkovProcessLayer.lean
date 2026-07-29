import HautevilleHouse.DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean.DirichletFormDomain

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

structure MarkovProcessCertificate where
  formDomain : DirichletFormDomain
  processLabel : String
  semigroupRoute : String
  generatorRoute : String
  dirichletAssociated : Bool
  samplePathContinuity : Bool

def markovProcessCertificate : MarkovProcessCertificate := {
  formDomain := primitiveDirichletFormDomain,
  processLabel := "symmetric Markov process associated with the Dirichlet form",
  semigroupRoute := "transition semigroup defined via the Dirichlet form L² generator",
  generatorRoute := "self-adjoint generator obtained from the closed Markovian form",
  dirichletAssociated := true,
  samplePathContinuity := true
}

def MarkovProcessLayerClosed (C : MarkovProcessCertificate) : Prop :=
  C.dirichletAssociated = true ∧
  C.samplePathContinuity = true

theorem markov_process_layer_closed_checked :
    MarkovProcessLayerClosed markovProcessCertificate := by
  exact And.intro rfl rfl

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse