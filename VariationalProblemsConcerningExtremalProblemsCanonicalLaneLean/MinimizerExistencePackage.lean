import HautevilleHouse.VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.ExtremalFunctionalPackage

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure MinimizerExistencePackage (Ω : AdmissibleFunctionSpace) (E : ExtremalFunctional Ω) where
  directMethodApplied : Prop
  coercivityCondition : Prop
  lowerSemicontinuityCondition : Prop
  minimizerExists : Prop
  directMethodAppliedTerm : directMethodApplied
  coercivityConditionTerm : coercivityCondition
  lowerSemicontinuityConditionTerm : lowerSemicontinuityCondition
  minimizerExistsTerm : minimizerExists

structure MinimizerExistenceEvidence (Ω : AdmissibleFunctionSpace) (E : ExtremalFunctional Ω)
    (P : MinimizerExistencePackage Ω E) where
  minimizerExistsClosed : P.minimizerExists

def MinimizerExistenceClosed (Ω : AdmissibleFunctionSpace) (E : ExtremalFunctional Ω)
    (P : MinimizerExistencePackage Ω E) : Prop :=
  P.minimizerExists

theorem minimizer_existence_closed_from_evidence (Ω : AdmissibleFunctionSpace)
    (E : ExtremalFunctional Ω) (P : MinimizerExistencePackage Ω E)
    (Ev : MinimizerExistenceEvidence Ω E P) : MinimizerExistenceClosed Ω E P := by
  exact Ev.minimizerExistsClosed

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse
