import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean

structure SobolevSpaceEmbeddings where
  sobolevInequality : Prop
  compactEmbedding : Prop
  extermalFunctionExists : Prop

def SobolevSpaceEmbeddingsClosed (S : SobolevSpaceEmbeddings) : Prop :=
  S.sobolevInequality ∧ S.compactEmbedding ∧ S.extermalFunctionExists

end VariationalProblemsConcerningExtremalProblemsCanonicalLaneLean
end HautevilleHouse