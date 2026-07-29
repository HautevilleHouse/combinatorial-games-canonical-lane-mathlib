import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialGamesCanonicalLaneLean

structure MechanismDesignPackage where
  socialChoiceFunction : Type
  implementationConcept : Type
  incentiveCompatibility : Prop
  efficiencyCondition : Prop
  revelationPrinciple : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  efficiencyConditionClosed : M.efficiencyCondition
  revelationPrincipleClosed : M.revelationPrinciple

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.incentiveCompatibility ∧ M.efficiencyCondition ∧ M.revelationPrinciple

theorem mechanism_design_closed_from_evidence
    (M : MechanismDesignPackage) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.efficiencyConditionClosed E.revelationPrincipleClosed)

end CombinatorialGamesCanonicalLaneLean
end HautevilleHouse