import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.RegularityTheory

/-!
# Lagrange Multiplier Method Package
-/

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure LagrangeMultiplierMethodPackage where
  constraintSatisfied : Prop
  multiplierExists : Prop
  augmentedLagrangian : Prop
  saddlePointCondition : Prop

structure LagrangeMultiplierMethodEvidence (L : LagrangeMultiplierMethodPackage) where
  constraintSatisfiedClosed : L.constraintSatisfied
  multiplierExistsClosed : L.multiplierExists
  augmentedLagrangianClosed : L.augmentedLagrangian
  saddlePointConditionClosed : L.saddlePointCondition

def LagrangeMultiplierMethodClosed (L : LagrangeMultiplierMethodPackage) : Prop :=
  L.constraintSatisfied ∧ L.multiplierExists ∧
  L.augmentedLagrangian ∧ L.saddlePointCondition

theorem lagrange_multiplier_method_closed_from_evidence
    (L : LagrangeMultiplierMethodPackage)
    (Ev : LagrangeMultiplierMethodEvidence L) : LagrangeMultiplierMethodClosed L := by
  exact And.intro Ev.constraintSatisfiedClosed
    (And.intro Ev.multiplierExistsClosed
      (And.intro Ev.augmentedLagrangianClosed
        Ev.saddlePointConditionClosed))

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse