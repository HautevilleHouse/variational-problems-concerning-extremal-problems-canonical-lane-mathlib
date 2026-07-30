import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure EulerLagrangePackage where
  functional : Type u
  lagrangian : Type v
  extremalCandidate : Type w
  firstVariationVanishes : Prop
  eulerLagrangeSystem : Prop

structure EulerLagrangeEvidence (E : EulerLagrangePackage) where
  firstVariationVanishesClosed : E.firstVariationVanishes
  eulerLagrangeSystemClosed : E.eulerLagrangeSystem

def EulerLagrangeClosed (E : EulerLagrangePackage) : Prop :=
  E.firstVariationVanishes ∧ E.eulerLagrangeSystem

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangePackage) (Ev : EulerLagrangeEvidence E) :
    EulerLagrangeClosed E := by
  exact And.intro Ev.firstVariationVanishesClosed Ev.eulerLagrangeSystemClosed

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse