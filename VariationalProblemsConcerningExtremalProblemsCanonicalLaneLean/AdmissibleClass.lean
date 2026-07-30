import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure AdmissibleExtremalProblem where
  domain : Type u
  functional : (domain → ℝ) → ℝ
  constraints : Set (domain → ℝ)
  candidate : domain → ℝ
  extremalCondition : Prop

structure AdmissibleClass where
  object : AdmissibleExtremalProblem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse