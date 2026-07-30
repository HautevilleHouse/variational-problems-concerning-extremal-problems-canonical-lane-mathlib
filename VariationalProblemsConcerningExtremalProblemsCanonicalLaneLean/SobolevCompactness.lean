import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.EulerLagrangeEquations

/-!
# Sobolev Compactness Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure SobolevCompactnessPackage where
  embeddingTheorem : Prop
  compactnessCondition : Prop
  lowerSemicontinuity : Prop
  coercivityCondition : Prop

structure SobolevCompactnessEvidence (S : SobolevCompactnessPackage) where
  embeddingTheoremClosed : S.embeddingTheorem
  compactnessConditionClosed : S.compactnessCondition
  lowerSemicontinuityClosed : S.lowerSemicontinuity
  coercivityConditionClosed : S.coercivityCondition

def SobolevCompactnessClosed (S : SobolevCompactnessPackage) : Prop :=
  S.embeddingTheorem ∧ S.compactnessCondition ∧
  S.lowerSemicontinuity ∧ S.coercivityCondition

theorem sobolev_compactness_closed_from_evidence (S : SobolevCompactnessPackage)
    (Ev : SobolevCompactnessEvidence S) : SobolevCompactnessClosed S := by
  exact And.intro Ev.embeddingTheoremClosed
    (And.intro Ev.compactnessConditionClosed
      (And.intro Ev.lowerSemicontinuityClosed
        Ev.coercivityConditionClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse