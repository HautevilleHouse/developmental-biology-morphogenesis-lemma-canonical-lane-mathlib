import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse