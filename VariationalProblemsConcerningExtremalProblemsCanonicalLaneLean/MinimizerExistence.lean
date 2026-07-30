import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.SobolevCompactness

/-!
# Minimizer Existence Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure MinimizerExistencePackage where
  minimizingSequenceBuilt : Prop
  sequentialCompactnessUsed : Prop
  limitFunctionalEquality : Prop
  minimizerFound : Prop

structure MinimizerExistenceEvidence (M : MinimizerExistencePackage) where
  minimizingSequenceBuiltClosed : M.minimizingSequenceBuilt
  sequentialCompactnessUsedClosed : M.sequentialCompactnessUsed
  limitFunctionalEqualityClosed : M.limitFunctionalEquality
  minimizerFoundClosed : M.minimizerFound

def MinimizerExistenceClosed (M : MinimizerExistencePackage) : Prop :=
  M.minimizingSequenceBuilt ∧ M.sequentialCompactnessUsed ∧
  M.limitFunctionalEquality ∧ M.minimizerFound

theorem minimizer_existence_closed_from_evidence (M : MinimizerExistencePackage)
    (Ev : MinimizerExistenceEvidence M) : MinimizerExistenceClosed M := by
  exact And.intro Ev.minimizingSequenceBuiltClosed
    (And.intro Ev.sequentialCompactnessUsedClosed
      (And.intro Ev.limitFunctionalEqualityClosed
        Ev.minimizerFoundClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse