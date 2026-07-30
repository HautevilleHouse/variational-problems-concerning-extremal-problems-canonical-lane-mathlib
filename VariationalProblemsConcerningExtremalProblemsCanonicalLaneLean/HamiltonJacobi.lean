import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure HamiltonJacobiPackage (A : AdmissibleClass) where
  hamiltonian : (A.object.domain → ℝ) → (A.object.domain → ℝ) → ℝ
  hamiltonJacobiEquation : Prop
  generatingFunction : Prop
  canonicalTransformation : Prop
  hamiltonJacobiEquationSatisfied : hamiltonJacobiEquation
  generatingFunctionSatisfied : generatingFunction
  canonicalTransformationSatisfied : canonicalTransformation

def HamiltonJacobiClosed {A : AdmissibleClass} (H : HamiltonJacobiPackage A) : Prop :=
  H.hamiltonJacobiEquation ∧ H.generatingFunction ∧ H.canonicalTransformation

theorem hamilton_jacobi_closed_from_evidence {A : AdmissibleClass} (H : HamiltonJacobiPackage A) :
    HamiltonJacobiClosed H := by
  exact And.intro H.hamiltonJacobiEquationSatisfied (And.intro H.generatingFunctionSatisfied H.canonicalTransformationSatisfied)

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse