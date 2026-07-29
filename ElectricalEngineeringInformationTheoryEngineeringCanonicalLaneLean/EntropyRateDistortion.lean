import ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean.ChannelCapacity

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure DistortionMeasure (source : Type) (reproduction : Type) where
  d : source → reproduction → ℝ≥0

structure RateDistortionPackage (A : AdmissibleClass) where
  source : Type
  reproduction : Type
  distortion : DistortionMeasure source reproduction
  rateDistortionFunc : ℝ → ℝ
  achievability : ∀ R, rateDistortionFunc R < ∞ → ∃ code, rate ≤ R ∧ expectedDistortion ≤ rateDistortionFunc R
  converse : ∀ code, expectedDistortion ≤ D → rate ≥ rateDistortionFunc D

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse