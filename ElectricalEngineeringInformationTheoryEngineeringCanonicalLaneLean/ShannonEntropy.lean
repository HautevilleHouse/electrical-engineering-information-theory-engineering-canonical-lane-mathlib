import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure ShannonEntropyPackage where
  sourceAlphabet : Type u
  probabilityDistribution : sourceAlphabet → ℝ
  entropy : ℝ
  entropyDefined : entropy = -∑ x in Finset.univ, (probabilityDistribution x) * Real.log (probabilityDistribution x)
  base : ℝ := Real.exp 1

structure ShannonEntropyEvidence (S : ShannonEntropyPackage) where
  entropyDefinedClosed : S.entropyDefined

def ShannonEntropyClosed (S : ShannonEntropyPackage) : Prop :=
  S.entropyDefined

theorem shannon_entropy_closed_from_evidence (S : ShannonEntropyPackage) (E : ShannonEntropyEvidence S) :
    ShannonEntropyClosed S := by
  exact E.entropyDefinedClosed

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse