import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure DirectMethodsPackage where
  functional : Type u
  admissibleSpace : Type v
  lowerSemicontinuity : Prop
  coercivity : Prop
  existenceMinimizer : Prop

structure DirectMethodsEvidence (D : DirectMethodsPackage) where
  lowerSemicontinuityClosed : D.lowerSemicontinuity
  coercivityClosed : D.coercivity
  existenceMinimizerClosed : D.existenceMinimizer

def DirectMethodsClosed (D : DirectMethodsPackage) : Prop :=
  D.lowerSemicontinuity ∧ D.coercivity ∧ D.existenceMinimizer

theorem direct_methods_closed_from_evidence (D : DirectMethodsPackage) (Ev : DirectMethodsEvidence D) :
    DirectMethodsClosed D := by
  exact And.intro Ev.lowerSemicontinuityClosed (And.intro Ev.coercivityClosed Ev.existenceMinimizerClosed)

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse