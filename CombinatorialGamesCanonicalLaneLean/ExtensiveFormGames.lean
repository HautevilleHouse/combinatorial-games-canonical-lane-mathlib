import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure ExtensiveFormGamePackage where
  gameTree : Type u
  informationSets : Type v
  playerActions : Type w
  payoffStructures : Prop
  subgamePerfectEquilibrium : Prop

structure ExtensiveFormGameEvidence (P : ExtensiveFormGamePackage) where
  payoffStructuresClosed : P.payoffStructures
  subgamePerfectEquilibriumClosed : P.subgamePerfectEquilibrium

def ExtensiveFormGameClosed (P : ExtensiveFormGamePackage) : Prop :=
  P.payoffStructures ∧ P.subgamePerfectEquilibrium

theorem extensive_form_game_closed_from_evidence (P : ExtensiveFormGamePackage)
    (E : ExtensiveFormGameEvidence P) : ExtensiveFormGameClosed P := by
  exact And.intro E.payoffStructuresClosed E.subgamePerfectEquilibriumClosed

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse
