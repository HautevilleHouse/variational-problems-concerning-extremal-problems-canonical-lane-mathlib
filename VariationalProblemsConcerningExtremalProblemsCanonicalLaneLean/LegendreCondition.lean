import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure LegendreConditionPackage (A : AdmissibleClass) where
  hessianOfLagrangian : (A.object.domain → ℝ) → (A.object.domain → ℝ) → Matrix ℝ ℝ ℝ
  strongLegendreCondition : Prop
  weakLegendreCondition : Prop
  convexityOnDomain : Prop

def LegendreConditionClosed {A : AdmissibleClass} (L : LegendreConditionPackage A) : Prop :=
  L.strongLegendreCondition ∧ L.weakLegendreCondition ∧ L.convexityOnDomain

theorem legendre_condition_closed_from_evidence {A : AdmissibleClass} (L : LegendreConditionPackage A) :
    LegendreConditionClosed L := by
  exact And.intro L.strongLegendreCondition (And.intro L.weakLegendreCondition L.convexityOnDomain)

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse