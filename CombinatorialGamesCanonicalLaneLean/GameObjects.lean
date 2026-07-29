import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure GameSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GameAdmittedObject where
  space : GameSpace
  finiteGame : Prop
  deterministic : Prop
  payoffModel : Type
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure GameEndgameState where
  object : GameAdmittedObject

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.equilibriumExists

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse