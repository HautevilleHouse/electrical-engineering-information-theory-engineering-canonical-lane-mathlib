import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure ChannelCodingPackage where
  inputAlphabet : Type
  outputAlphabet : Type
  transitionMatrix : inputAlphabet → outputAlphabet → ℝ
  codeSize : Nat
  errorProbability : ℝ
  capacity : ℝ

def ChannelCodingClosed (C : ChannelCodingPackage) : Prop :=
  C.codeSize ≤ 2 ^ C.capacity ∧ C.errorProbability ≤ 0

structure ChannelCodingEvidence (C : ChannelCodingPackage) where
  codeSizeClosed : C.codeSize ≤ 2 ^ C.capacity
  errorProbabilityClosed : C.errorProbability ≤ 0

theorem channel_coding_closed_from_evidence (C : ChannelCodingPackage) (E : ChannelCodingEvidence C) :
    ChannelCodingClosed C := by
  exact And.intro E.codeSizeClosed E.errorProbabilityClosed

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse