import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure DirectMethodCalculusVariations where
  lowerSemicontinuity : Prop
  coercivity : Prop
  minimizerExists : Prop

structure DirectMethodEvidence (D : DirectMethodCalculusVariations) where
  lowerSemicontinuityClosed : D.lowerSemicontinuity
  coercivityClosed : D.coercivity
  minimizerExistsClosed : D.minimizerExists

def DirectMethodCalculusVariationsClosed (D : DirectMethodCalculusVariations) : Prop :=
  D.lowerSemicontinuity ∧ D.coercivity ∧ D.minimizerExists

theorem direct_method_closed_from_evidence (D : DirectMethodCalculusVariations) (E : DirectMethodEvidence D) :
    DirectMethodCalculusVariationsClosed D := by
  exact And.intro E.lowerSemicontinuityClosed (And.intro E.coercivityClosed E.minimizerExistsClosed)

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse