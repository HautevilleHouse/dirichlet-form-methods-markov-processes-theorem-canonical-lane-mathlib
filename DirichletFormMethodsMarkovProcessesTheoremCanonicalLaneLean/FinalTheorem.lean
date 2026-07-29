import HautevilleHouse.DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

def ConstrainedDirichletFormClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_dirichlet_form_endgame (A : AdmissibleClass) :
    ConstrainedDirichletFormClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse