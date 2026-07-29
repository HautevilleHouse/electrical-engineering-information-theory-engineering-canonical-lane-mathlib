import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure SourcePackage where
  alphabet : Type u
  probabilityDistribution : alphabet → ℝ
  entropy : ℝ
  stationary : Prop
  ergodic : Prop

structure SourceEvidence (S : SourcePackage) where
  stationaryClosed : S.stationary
  ergodicClosed : S.ergodic

def SourceClosed (S : SourcePackage) : Prop :=
  S.stationary ∧ S.ergodic

theorem source_closed_from_evidence (S : SourcePackage) (E : SourceEvidence S) : SourceClosed S :=
  And.intro E.stationaryClosed E.ergodicClosed

structure SourceCodingPackage (S : SourcePackage) where
  compressionRate : ℝ
  achievableRate : Prop
  converseRate : Prop
  sourceCodingTheorem : Prop

structure SourceCodingEvidence {S : SourcePackage} (SC : SourceCodingPackage S) where
  achievableRateClosed : SC.achievableRate
  converseRateClosed : SC.converseRate
  sourceCodingTheoremClosed : SC.sourceCodingTheorem

def SourceCodingClosed {S : SourcePackage} (SC : SourceCodingPackage S) : Prop :=
  SC.achievableRate ∧ SC.converseRate ∧ SC.sourceCodingTheorem

theorem source_coding_closed_from_evidence {S : SourcePackage} (SC : SourceCodingPackage S) (E : SourceCodingEvidence SC) : SourceCodingClosed SC :=
  And.intro E.achievableRateClosed (And.intro E.converseRateClosed E.sourceCodingTheoremClosed)

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse