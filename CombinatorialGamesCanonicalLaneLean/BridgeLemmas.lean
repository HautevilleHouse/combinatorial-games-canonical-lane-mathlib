import CombinatorialGamesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse