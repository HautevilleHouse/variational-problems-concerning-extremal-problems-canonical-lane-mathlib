import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure WeierstrassErdmannPackage (A : AdmissibleClass) where
  cornerCondition : Prop
  integrandNonregular : Prop
  brokenExtremal : Prop
  cornerConditionSatisfied : cornerCondition
  integrandNonregularSatisfied : integrandNonregular
  brokenExtremalSatisfied : brokenExtremal

def WeierstrassErdmannClosed {A : AdmissibleClass} (W : WeierstrassErdmannPackage A) : Prop :=
  W.cornerCondition ∧ W.integrandNonregular ∧ W.brokenExtremal

theorem weierstrass_erdmann_closed_from_evidence {A : AdmissibleClass} (W : WeierstrassErdmannPackage A) :
    WeierstrassErdmannClosed W := by
  exact And.intro W.cornerConditionSatisfied (And.intro W.integrandNonregularSatisfied W.brokenExtremalSatisfied)

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse