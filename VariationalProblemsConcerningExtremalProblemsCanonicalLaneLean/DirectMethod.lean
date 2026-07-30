import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.ExistenceTheorem

/-!
# Direct Method Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure DirectMethodPackage {E : VariationalProblemPackage}
    (A : AdmissibleVariationalPackage E) where
  lowerSemicontinuous : Prop
  coercivityCondition : Prop
  existenceMinimizer : Prop
  weakConvergence : Prop

structure DirectMethodEvidence {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} (D : DirectMethodPackage A) where
  lowerSemicontinuousClosed : D.lowerSemicontinuous
  coercivityConditionClosed : D.coercivityCondition
  existenceMinimizerClosed : D.existenceMinimizer
  weakConvergenceClosed : D.weakConvergence

def DirectMethodClosed {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} (D : DirectMethodPackage A) : Prop :=
  D.lowerSemicontinuous ∧ D.coercivityCondition ∧ D.existenceMinimizer ∧ D.weakConvergence

theorem direct_method_closed_from_evidence
    {E : VariationalProblemPackage} {A : AdmissibleVariationalPackage E}
    (D : DirectMethodPackage A) (E_vid : DirectMethodEvidence D) :
    DirectMethodClosed D := by
  exact And.intro E_vid.lowerSemicontinuousClosed
    (And.intro E_vid.coercivityConditionClosed
      (And.intro E_vid.existenceMinimizerClosed E_vid.weakConvergenceClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse