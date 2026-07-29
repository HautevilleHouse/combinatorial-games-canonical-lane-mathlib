import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.bridgeSatisfied ∨ A.gateSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse