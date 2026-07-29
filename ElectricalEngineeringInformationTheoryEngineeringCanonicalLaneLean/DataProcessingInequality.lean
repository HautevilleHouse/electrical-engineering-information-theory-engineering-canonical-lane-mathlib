import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure DataProcessingInequalityPackage where
  randomVariables : Type u
  markovChain : Prop
  mutualInformationDecrease : Prop
  inequalityStatement : Prop

structure DataProcessingInequalityEvidence (D : DataProcessingInequalityPackage) where
  markovChainClosed : D.markovChain
  mutualInformationDecreaseClosed : D.mutualInformationDecrease
  inequalityStatementClosed : D.inequalityStatement

def DataProcessingInequalityClosed (D : DataProcessingInequalityPackage) : Prop :=
  D.markovChain ∧ D.mutualInformationDecrease ∧ D.inequalityStatement

theorem data_processing_inequality_closed_from_evidence (D : DataProcessingInequalityPackage) (E : DataProcessingInequalityEvidence D) :
    DataProcessingInequalityClosed D := by
  exact And.intro E.markovChainClosed (And.intro E.mutualInformationDecreaseClosed E.inequalityStatementClosed)

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse