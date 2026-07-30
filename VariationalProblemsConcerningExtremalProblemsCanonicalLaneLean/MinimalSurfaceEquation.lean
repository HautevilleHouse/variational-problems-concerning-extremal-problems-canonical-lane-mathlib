import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure MinimalSurfaceEquation where
  boundaryCondition : Set (ℝ² → ℝ)
  areaFunctional : (ℝ² → ℝ) → ℝ
  minimalSurfaceExists : Prop

def MinimalSurfaceEquationClosed (M : MinimalSurfaceEquation) : Prop :=
  M.minimalSurfaceExists

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse