import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure WeierstrassNecessaryConditionsPackage where
  strongMinimizer : Prop
  weierstrassExcessFunction : Type u
  cornerConditions : Prop
  legendreCondition : Prop

structure WeierstrassNecessaryConditionsEvidence (W : WeierstrassNecessaryConditionsPackage) where
  strongMinimizerClosed : W.strongMinimizer
  legendreConditionClosed : W.legendreCondition
  cornerConditionsClosed : W.cornerConditions

def WeierstrassNecessaryConditionsClosed (W : WeierstrassNecessaryConditionsPackage) : Prop :=
  W.strongMinimizer ∧ W.legendreCondition ∧ W.cornerConditions

theorem weierstrass_necessary_conditions_closed_from_evidence (W : WeierstrassNecessaryConditionsPackage) (Ev : WeierstrassNecessaryConditionsEvidence W) :
    WeierstrassNecessaryConditionsClosed W := by
  exact And.intro Ev.strongMinimizerClosed (And.intro Ev.legendreConditionClosed Ev.cornerConditionsClosed)

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse