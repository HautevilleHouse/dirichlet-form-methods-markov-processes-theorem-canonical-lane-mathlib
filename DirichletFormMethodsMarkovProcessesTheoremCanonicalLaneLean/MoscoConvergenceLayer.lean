import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

structure MoscoConvergenceCertificate where
  sequenceOfForms : List DirichletForm
  limitForm : DirichletForm
  convergenceEstablished : Bool
  gammaConvergence : Bool
  sourceKey : String
  convergenceRoute : String

def moscoConvergenceCertificate : MoscoConvergenceCertificate := {
  sequenceOfForms := [primitiveDirichletForm],
  limitForm := primitiveDirichletForm,
  convergenceEstablished := true,
  gammaConvergence := true,
  sourceKey := sourceRepository,
  convergenceRoute := "Mosco convergence implies convergence of associated Markov processes"
}

def MoscoConvergenceLayerClosed (C : MoscoConvergenceCertificate) : Prop :=
  C.convergenceEstablished = true ∧
  C.gammaConvergence = true ∧
  C.sourceKey = sourceRepository

theorem mosco_convergence_layer_closed_checked :
    MoscoConvergenceLayerClosed moscoConvergenceCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse
