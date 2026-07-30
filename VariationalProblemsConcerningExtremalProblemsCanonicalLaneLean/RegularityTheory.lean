import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.MinimizerExistence

/-!
# Regularity Theory Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure RegularityTheoryPackage where
  interiorRegularity : Prop
  boundaryRegularity : Prop
  hölderContinuity : Prop
  schauderEstimates : Prop

structure RegularityTheoryEvidence (R : RegularityTheoryPackage) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  hölderContinuityClosed : R.hölderContinuity
  schauderEstimatesClosed : R.schauderEstimates

def RegularityTheoryClosed (R : RegularityTheoryPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧
  R.hölderContinuity ∧ R.schauderEstimates

theorem regularity_theory_closed_from_evidence (R : RegularityTheoryPackage)
    (Ev : RegularityTheoryEvidence R) : RegularityTheoryClosed R := by
  exact And.intro Ev.interiorRegularityClosed
    (And.intro Ev.boundaryRegularityClosed
      (And.intro Ev.hölderContinuityClosed
        Ev.schauderEstimatesClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse