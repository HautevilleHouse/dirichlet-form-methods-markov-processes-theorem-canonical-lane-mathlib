import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean.DirichletFormAdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  admissibleDirichletForm A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.endpointSatisfied

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse