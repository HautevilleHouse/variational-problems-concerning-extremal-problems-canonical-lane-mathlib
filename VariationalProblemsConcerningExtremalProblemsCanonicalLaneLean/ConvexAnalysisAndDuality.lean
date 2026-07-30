import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure ConvexAnalysisPackage where
  convexFunctional : Type u
  subdifferential : Type v
  fenchelConjugate : Type w
  dualityTheorem : Prop

structure ConvexAnalysisEvidence (C : ConvexAnalysisPackage) where
  subdifferentialClosed : Prop
  fenchelConjugateClosed : Prop
  dualityTheoremClosed : C.dualityTheorem

def ConvexAnalysisClosed (C : ConvexAnalysisPackage) : Prop :=
  C.dualityTheorem

theorem convex_analysis_closed_from_evidence (C : ConvexAnalysisPackage) (Ev : ConvexAnalysisEvidence C) :
    ConvexAnalysisClosed C := by
  exact Ev.dualityTheoremClosed

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse