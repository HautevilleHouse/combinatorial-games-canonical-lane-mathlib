import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure ExtensiveFormGamePackage where
  gameTree : Type u
  players : Nat
  informationSets : Type v
  strategies : Type w
  perfectRecall : Prop
  subgamePerfectEquilibrium : Prop

structure ExtensiveFormGameEvidence (E : ExtensiveFormGamePackage) where
  perfectRecallClosed : E.perfectRecall
  subgamePerfectEquilibriumClosed : E.subgamePerfectEquilibrium

def ExtensiveFormGameClosed (E : ExtensiveFormGamePackage) : Prop :=
  E.perfectRecall ∧ E.subgamePerfectEquilibrium

theorem extensive_form_game_closed_from_evidence (E : ExtensiveFormGamePackage)
    (Ev : ExtensiveFormGameEvidence E) : ExtensiveFormGameClosed E := by
  exact And.intro Ev.perfectRecallClosed Ev.subgamePerfectEquilibriumClosed

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse