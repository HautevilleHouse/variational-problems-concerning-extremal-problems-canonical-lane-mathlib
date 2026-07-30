import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure VariationalProblem where
  domain : Type u
  functional : (domain → ℝ) → ℝ
  admissibleFunctions : Set (domain → ℝ)
  extremumType : ExtremumType

def VariationalProblemClosed (P : VariationalProblem) : Prop :=
  P.functional ≠ fun _ => 0

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse