import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure RateDistortionPackage where
  sourceAlphabet : Type
  reproductionAlphabet : Type
  distortionMeasure : sourceAlphabet → reproductionAlphabet → ℝ
  rateDistortionFunction : ℝ → ℝ
  achievableRate : ℝ
  distortionLevel : ℝ

def RateDistortionClosed (R : RateDistortionPackage) : Prop :=
  R.achievableRate ≥ R.rateDistortionFunction (R.distortionLevel)

structure RateDistortionEvidence (R : RateDistortionPackage) where
  achievableRateClosed : R.achievableRate ≥ R.rateDistortionFunction (R.distortionLevel)

theorem rate_distortion_closed_from_evidence (R : RateDistortionPackage) (E : RateDistortionEvidence R) :
    RateDistortionClosed R := by
  exact E.achievableRateClosed

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse