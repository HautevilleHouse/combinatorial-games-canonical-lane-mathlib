import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumGameSpace : Type
  mixedStrategies : Type
  valueOfGame : ℝ
  minimaxEqualityHolds : Prop
  saddlePointExists : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  minimaxEqualityHoldsClosed : M.minimaxEqualityHolds
  saddlePointExistsClosed : M.saddlePointExists

def MinimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.minimaxEqualityHolds ∧ M.saddlePointExists

theorem minimax_theorem_closed_from_evidence
    (M : MinimaxTheoremPackage) (E : MinimaxTheoremEvidence M) :
    MinimaxTheoremClosed M := by
  exact And.intro E.minimaxEqualityHoldsClosed E.saddlePointExistsClosed

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse