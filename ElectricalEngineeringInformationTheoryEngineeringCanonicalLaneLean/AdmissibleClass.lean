import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean

structure InformationAdmittedObject where
  source : Type
  alphabet : Type
  probabilitySpace : Prop
  entropyDefined : Prop
  conclusion : entropyDefined

structure AdmissibleClass where
  object : InformationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ShannonEntropyClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringInformationTheoryEngineeringCanonicalLaneLean
end HautevilleHouse