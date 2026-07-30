import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.EulerLagrangeEquation

/-!
# Lax-Milgram Theorem Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure LaxMilgramPackage {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} {D : DirectMethodPackage A}
    {EL : EulerLagrangeEquationPackage D} (B : BilinearFormPackage) where
  boundedness : Prop
  coercivity : Prop
  uniqueSolution : Prop
  stability : Prop

structure LaxMilgramEvidence {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} {D : DirectMethodPackage A}
    {EL : EulerLagrangeEquationPackage D} {B : BilinearFormPackage}
    (L : LaxMilgramPackage B) where
  boundednessClosed : L.boundedness
  coercivityClosed : L.coercivity
  uniqueSolutionClosed : L.uniqueSolution
  stabilityClosed : L.stability

def LaxMilgramClosed {E : VariationalProblemPackage}
    {A : AdmissibleVariationalPackage E} {D : DirectMethodPackage A}
    {EL : EulerLagrangeEquationPackage D} {B : BilinearFormPackage}
    (L : LaxMilgramPackage B) : Prop :=
  L.boundedness ∧ L.coercivity ∧ L.uniqueSolution ∧ L.stability

theorem lax_milgram_closed_from_evidence
    {E : VariationalProblemPackage} {A : AdmissibleVariationalPackage E}
    {D : DirectMethodPackage A} {EL : EulerLagrangeEquationPackage D}
    {B : BilinearFormPackage} (L : LaxMilgramPackage B)
    (E_vid : LaxMilgramEvidence L) : LaxMilgramClosed L := by
  exact And.intro E_vid.boundednessClosed
    (And.intro E_vid.coercivityClosed
      (And.intro E_vid.uniqueSolutionClosed E_vid.stabilityClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse