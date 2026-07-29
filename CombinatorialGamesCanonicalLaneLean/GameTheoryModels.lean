import CombinatorialGamesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure GameRepresentation where
  positions : Type
  moves : positions → positions → Prop
  terminal : positions → Prop
  payoff : positions → ℝ
  wellFoundedMoves : WellFounded moves

structure PositionEvaluation where
  game : GameRepresentation
  optimalStrategies : Prop
  strategyProfile : Prop
  equilibriumExistence : Prop
  valueDetermined : Prop

structure PositionEvaluationEvidence (G : GameRepresentation) (P : PositionEvaluation) where
  optimalStrategiesClosed : P.optimalStrategies
  strategyProfileClosed : P.strategyProfile
  equilibriumExistenceClosed : P.equilibriumExistence
  valueDeterminedClosed : P.valueDetermined

def PositionEvaluationClosed (G : GameRepresentation) (P : PositionEvaluation) : Prop :=
  P.optimalStrategies ∧ P.strategyProfile ∧ P.equilibriumExistence ∧ P.valueDetermined

theorem position_evaluation_closed_from_evidence
    (G : GameRepresentation) (P : PositionEvaluation) (E : PositionEvaluationEvidence G P) :
    PositionEvaluationClosed G P := by
  exact And.intro E.optimalStrategiesClosed
    (And.intro E.strategyProfileClosed
      (And.intro E.equilibriumExistenceClosed E.valueDeterminedClosed))

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse