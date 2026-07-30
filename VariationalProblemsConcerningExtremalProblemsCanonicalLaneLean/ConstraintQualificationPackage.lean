import HautevilleHouse.VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.ExtremalFunctionalPackage

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure ConstraintQualificationPackage (Ω : AdmissibleFunctionSpace) (E : ExtremalFunctional Ω) where
  equalityConstraints : Prop
  inequalityConstraints : Prop
  licqCondition : Prop
  lagrangeMultiplierExists : Prop
  eulerLagrangeWithMultipliersDerived : Prop
  licqConditionTerm : licqCondition
  lagrangeMultiplierExistsTerm : lagrangeMultiplierExists
  eulerLagrangeWithMultipliersDerivedTerm : eulerLagrangeWithMultipliersDerived

structure ConstraintQualificationEvidence (Ω : AdmissibleFunctionSpace) (E : ExtremalFunctional Ω)
    (C : ConstraintQualificationPackage Ω E) where
  eulerLagrangeWithMultipliersDerivedClosed : C.eulerLagrangeWithMultipliersDerived

def ConstraintQualificationClosed (Ω : AdmissibleFunctionSpace) (E : ExtremalFunctional Ω)
    (C : ConstraintQualificationPackage Ω E) : Prop :=
  C.eulerLagrangeWithMultipliersDerived

theorem constraint_qualification_closed_from_evidence (Ω : AdmissibleFunctionSpace)
    (E : ExtremalFunctional Ω) (C : ConstraintQualificationPackage Ω E)
    (Ev : ConstraintQualificationEvidence Ω E C) : ConstraintQualificationClosed Ω E C := by
  exact Ev.eulerLagrangeWithMultipliersDerivedClosed

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse
