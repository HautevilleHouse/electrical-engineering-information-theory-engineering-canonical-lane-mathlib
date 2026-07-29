import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure ChannelPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  channelMatrix : inputAlphabet → outputAlphabet → ℝ
  memoryless : Prop
  stationary : Prop

structure ChannelEvidence (C : ChannelPackage) where
  memorylessClosed : C.memoryless
  stationaryClosed : C.stationary

def ChannelClosed (C : ChannelPackage) : Prop :=
  C.memoryless ∧ C.stationary

theorem channel_closed_from_evidence (C : ChannelPackage) (E : ChannelEvidence C) : ChannelClosed C :=
  And.intro E.memorylessClosed E.stationaryClosed

structure CapacityPackage (C : ChannelPackage) where
  capacity : ℝ
  capacityAchievable : Prop
  capacityUpperBound : Prop
  codingTheorem : Prop

structure CapacityEvidence {C : ChannelPackage} (Cap : CapacityPackage C) where
  capacityAchievableClosed : Cap.capacityAchievable
  capacityUpperBoundClosed : Cap.capacityUpperBound
  codingTheoremClosed : Cap.codingTheorem

def CapacityClosed {C : ChannelPackage} (Cap : CapacityPackage C) : Prop :=
  Cap.capacityAchievable ∧ Cap.capacityUpperBound ∧ Cap.codingTheorem

theorem capacity_closed_from_evidence {C : ChannelPackage} (Cap : CapacityPackage C) (E : CapacityEvidence Cap) : CapacityClosed Cap :=
  And.intro E.capacityAchievableClosed (And.intro E.capacityUpperBoundClosed E.codingTheoremClosed)

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse