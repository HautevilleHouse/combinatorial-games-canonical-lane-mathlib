import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure GameAdmittedObject where
  gameModel : Type
  pureStrategyNashExists : Prop
  mixedStrategyNashExists : Prop
  conclude : pureStrategyNashExists ∨ mixedStrategyNashExists

structure AdmissibleClass where
  object : GameAdmittedObject
  bridgeSatisfied : Prop
  gateSatisfied : Prop
  gateWitness : bridgeSatisfied ∨ gateSatisfied

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.pureStrategyNashExists ∨ A.object.mixedStrategyNashExists) ∧ (A.bridgeSatisfied ∨ A.gateSatisfied)

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse