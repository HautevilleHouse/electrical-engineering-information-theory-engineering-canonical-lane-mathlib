import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure DistortionMeasure (source : Type u) (reproduction : Type v) where
  d : source → reproduction → ℝ
  nonnegative : ∀ x y, d x y ≥ 0

structure RateDistortionPackage (S : SourcePackage) (R : reproduction : Type v) where
  distortionMeasure : DistortionMeasure S.alphabet R
  rateDistortionFunction : ℝ → ℝ
  rateDistortionAchievable : Prop
  rateDistortionConverse : Prop
  rateDistortionTheorem : Prop

structure RateDistortionEvidence {S : SourcePackage} {R : Type v} (RD : RateDistortionPackage S R) where
  rateDistortionAchievableClosed : RD.rateDistortionAchievable
  rateDistortionConverseClosed : RD.rateDistortionConverse
  rateDistortionTheoremClosed : RD.rateDistortionTheorem

def RateDistortionClosed {S : SourcePackage} {R : Type v} (RD : RateDistortionPackage S R) : Prop :=
  RD.rateDistortionAchievable ∧ RD.rateDistortionConverse ∧ RD.rateDistortionTheorem

theorem rate_distortion_closed_from_evidence {S : SourcePackage} {R : Type v} (RD : RateDistortionPackage S R) (E : RateDistortionEvidence RD) : RateDistortionClosed RD :=
  And.intro E.rateDistortionAchievableClosed (And.intro E.rateDistortionConverseClosed E.rateDistortionTheoremClosed)

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse