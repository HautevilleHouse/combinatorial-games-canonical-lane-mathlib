import CombinatorialGamesCanonicalLaneLean.GameTheoryModels

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure NashEquilibriumPackage (G : GameRepresentation) where
  equilibrium : G.positions → ℝ
  bestResponse : G.positions → G.positions → Prop
  mutualBestResponse : Prop
  existenceGuaranteed : Prop

structure NashEquilibriumEvidence (G : GameRepresentation) (N : NashEquilibriumPackage G) where
  mutualBestResponseClosed : N.mutualBestResponse
  existenceGuaranteedClosed : N.existenceGuaranteed

def NashEquilibriumClosed (G : GameRepresentation) (N : NashEquilibriumPackage G) : Prop :=
  N.mutualBestResponse ∧ N.existenceGuaranteed

theorem nash_equilibrium_closed_from_evidence
    (G : GameRepresentation) (N : NashEquilibriumPackage G) (E : NashEquilibriumEvidence G N) :
    NashEquilibriumClosed G N := by
  exact And.intro E.mutualBestResponseClosed E.existenceGuaranteedClosed

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse