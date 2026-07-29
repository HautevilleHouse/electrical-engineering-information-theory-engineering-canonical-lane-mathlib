import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse