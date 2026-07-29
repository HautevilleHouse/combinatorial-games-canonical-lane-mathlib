import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure BargainingSolutionPackage where
  feasibleSet : Set (ℝ × ℝ)
  disagreementPoint : ℝ × ℝ
  nashBargainingSolution : ℝ × ℝ
  axioms : Prop
  solutionUnique : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  axiomsClosed : B.axioms
  solutionUniqueClosed : B.solutionUnique

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.axioms ∧ B.solutionUnique

theorem bargaining_solution_closed_from_evidence
    (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) :
    BargainingSolutionClosed B := by
  exact And.intro E.axiomsClosed E.solutionUniqueClosed

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse