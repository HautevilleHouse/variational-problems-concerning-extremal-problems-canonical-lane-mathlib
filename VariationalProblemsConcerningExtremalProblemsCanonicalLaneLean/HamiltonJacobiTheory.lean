import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure HamiltonJacobiPackage where
  hamiltonian : Type u
  canonicalEquations : Prop
  hamiltonJacobiEquation : Prop
  actionFunctional : Type v

structure HamiltonJacobiEvidence (H : HamiltonJacobiPackage) where
  canonicalEquationsClosed : H.canonicalEquations
  hamiltonJacobiEquationClosed : H.hamiltonJacobiEquation

def HamiltonJacobiClosed (H : HamiltonJacobiPackage) : Prop :=
  H.canonicalEquations ∧ H.hamiltonJacobiEquation

theorem hamilton_jacobi_closed_from_evidence (H : HamiltonJacobiPackage) (Ev : HamiltonJacobiEvidence H) :
    HamiltonJacobiClosed H := by
  exact And.intro Ev.canonicalEquationsClosed Ev.hamiltonJacobiEquationClosed

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse