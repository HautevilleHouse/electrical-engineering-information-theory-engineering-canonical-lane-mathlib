import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure JointTypicityPackage where
  sequences : Type u
  jointTypicalSet : Set (sequences × sequences)
  jointTypicalityCondition : Prop
  asymptoticEquipartitionProperty : Prop

structure JointTypicityEvidence (J : JointTypicityPackage) where
  jointTypicalityConditionClosed : J.jointTypicalityCondition
  asymptoticEquipartitionPropertyClosed : J.asymptoticEquipartitionProperty

def JointTypicityClosed (J : JointTypicityPackage) : Prop :=
  J.jointTypicalityCondition ∧ J.asymptoticEquipartitionProperty

theorem joint_typicity_closed_from_evidence (J : JointTypicityPackage) (E : JointTypicityEvidence J) :
    JointTypicityClosed J := by
  exact And.intro E.jointTypicalityConditionClosed E.asymptoticEquipartitionPropertyClosed

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse