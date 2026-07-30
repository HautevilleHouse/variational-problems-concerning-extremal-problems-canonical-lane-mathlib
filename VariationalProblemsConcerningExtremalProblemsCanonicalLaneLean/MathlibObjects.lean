import VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure VariationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedObject where
  space : VariationalSpace
  functionalDefined : Prop
  extremalExists : Prop
  optimalityCondition : Prop
  conclusion : functionalDefined ∧ extremalExists ∧ optimalityCondition

structure VariationalEndgameState where
  object : AdmittedObject

def VariationalWitnessClosed (O : AdmittedObject) : Prop :=
  O.functionalDefined ∧ O.extremalExists ∧ O.optimalityCondition

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse