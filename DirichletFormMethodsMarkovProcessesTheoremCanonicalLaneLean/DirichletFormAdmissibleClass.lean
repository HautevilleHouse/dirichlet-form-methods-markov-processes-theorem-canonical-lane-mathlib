import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean

structure DirichletForm where
  domain : Type
  energyForm : (domain → ℝ) → ℝ
  markovProperty : Prop

def admissibleDirichletForm (f : DirichletForm) : Prop :=
  f.markovProperty

structure AdmissibleClass where
  object : DirichletForm
  endpointSatisfied : admissibleDirichletForm object
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DirichletFormMethodsMarkovProcessesTheoremCanonicalLaneLean
end HautevilleHouse