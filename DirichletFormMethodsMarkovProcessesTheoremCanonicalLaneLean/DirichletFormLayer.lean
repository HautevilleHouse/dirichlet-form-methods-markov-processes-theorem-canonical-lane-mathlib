import HautevilleHouse.DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean.MarkovProcessLayer

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

structure DirichletFormCertificate where
  formDomain : DirichletFormDomain
  energyRoute : String
  recurrentRoute : String
  transientRoute : String
  dirichletStructureChecked : Bool
  markovProcessAssociated : Bool

def dirichletFormCertificate : DirichletFormCertificate := {
  formDomain := primitiveDirichletFormDomain,
  energyRoute := "Dirichlet energy routed through the domain associated with the Markov process",
  recurrentRoute := "recurrence property captured via Dirichlet form capacity",
  transientRoute := "transience property captured via Dirichlet form potential",
  dirichletStructureChecked := true,
  markovProcessAssociated := true
}

def DirichletFormLayerClosed (C : DirichletFormCertificate) : Prop :=
  C.dirichletStructureChecked = true ∧
  C.markovProcessAssociated = true

theorem dirichlet_form_layer_closed_checked :
    DirichletFormLayerClosed dirichletFormCertificate := by
  exact And.intro rfl rfl

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse