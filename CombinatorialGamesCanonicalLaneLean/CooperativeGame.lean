import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure CooperativeGamePackage where
  players : Nat
  characteristicFunction : Type u
  core : Type v
  shapleyValue : Type w
  coreNonempty : Prop
  shapleyValueFair : Prop

structure CooperativeGameEvidence (C : CooperativeGamePackage) where
  coreNonemptyClosed : C.coreNonempty
  shapleyValueFairClosed : C.shapleyValueFair

def CooperativeGameClosed (C : CooperativeGamePackage) : Prop :=
  C.coreNonempty ∧ C.shapleyValueFair

theorem cooperative_game_closed_from_evidence (C : CooperativeGamePackage)
    (E : CooperativeGameEvidence C) : CooperativeGameClosed C := by
  exact And.intro E.coreNonemptyClosed E.shapleyValueFairClosed

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse