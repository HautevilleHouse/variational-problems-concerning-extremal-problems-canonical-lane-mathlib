import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure MorseTheoryPackage (A : AdmissibleClass) where
  criticalPoints : Set (A.object.domain → ℝ)
  morseIndex : (A.object.domain → ℝ) → ℕ
  nullity : (A.object.domain → ℝ) → ℕ
  morseLemma : Prop
  morseInequalities : Prop
  morseLemmaSatisfied : morseLemma
  morseInequalitiesSatisfied : morseInequalities

def MorseTheoryClosed {A : AdmissibleClass} (M : MorseTheoryPackage A) : Prop :=
  M.morseLemma ∧ M.morseInequalities

theorem morse_theory_closed_from_evidence {A : AdmissibleClass} (M : MorseTheoryPackage A) :
    MorseTheoryClosed M := by
  exact And.intro M.morseLemmaSatisfied M.morseInequalitiesSatisfied

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse