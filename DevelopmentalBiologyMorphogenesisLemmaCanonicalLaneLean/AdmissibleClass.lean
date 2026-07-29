import DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DevelopmentalBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DevelopmentalBiologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse