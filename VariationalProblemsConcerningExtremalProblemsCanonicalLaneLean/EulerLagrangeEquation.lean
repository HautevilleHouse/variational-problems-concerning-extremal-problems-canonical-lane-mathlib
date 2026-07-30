import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.DirectMethod

/-!
# Euler-Lagrange Equation Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure EulerLagrangeEquationPackage {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} (D : DirectMethodPackage A) where
  integrandDifferentiable : Prop
  firstVariationVanishes : Prop
  eulerLagrangeDerived : Prop
  boundaryConditions : Prop

structure EulerLagrangeEvidence {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} {D : DirectMethodPackage A}
    (EL : EulerLagrangeEquationPackage D) where
  integrandDifferentiableClosed : EL.integrandDifferentiable
  firstVariationVanishesClosed : EL.firstVariationVanishes
  eulerLagrangeDerivedClosed : EL.eulerLagrangeDerived
  boundaryConditionsClosed : EL.boundaryConditions

def EulerLagrangeClosed {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} {D : DirectMethodPackage A}
    (EL : EulerLagrangeEquationPackage D) : Prop :=
  EL.integrandDifferentiable ∧ EL.firstVariationVanishes ∧ EL.eulerLagrangeDerived ∧ EL.boundaryConditions

theorem euler_lagrange_closed_from_evidence
    {E : VariationalProblemPackage} {A : AdmissibleVariationalPackage E}
    {D : DirectMethodPackage A} (EL : EulerLagrangeEquationPackage D)
    (E_vid : EulerLagrangeEvidence EL) : EulerLagrangeClosed EL := by
  exact And.intro E_vid.integrandDifferentiableClosed
    (And.intro E_vid.firstVariationVanishesClosed
      (And.intro E_vid.eulerLagrangeDerivedClosed E_vid.boundaryConditionsClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse