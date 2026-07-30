import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure NoetherTheoremPackage where
  symmetryGroup : Type u
  conservedQuantity : Type v
  invarianceUnderGroup : Prop
  conservationLaw : Prop

structure NoetherTheoremEvidence (N : NoetherTheoremPackage) where
  invarianceUnderGroupClosed : N.invarianceUnderGroup
  conservationLawClosed : N.conservationLaw

def NoetherTheoremClosed (N : NoetherTheoremPackage) : Prop :=
  N.invarianceUnderGroup ∧ N.conservationLaw

theorem noether_theorem_closed_from_evidence (N : NoetherTheoremPackage) (Ev : NoetherTheoremEvidence N) :
    NoetherTheoremClosed N := by
  exact And.intro Ev.invarianceUnderGroupClosed Ev.conservationLawClosed

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse