import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DevelopmentalBiologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse