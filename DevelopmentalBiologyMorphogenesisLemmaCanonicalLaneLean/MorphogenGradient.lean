import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

structure MorphogenGradientPackage where
  morphogen : Type u
  sourceCells : Type v
  gradientProfile : Type w
  steadyStateReached : Prop
  gradientRange : Prop
  diffusionCoefficientPositive : Prop
  morphogenProductionSource : Prop
  morphogenDegradation : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  steadyStateReachedClosed : M.steadyStateReached
  gradientRangeClosed : M.gradientRange
  diffusionCoefficientPositiveClosed : M.diffusionCoefficientPositive
  morphogenProductionSourceClosed : M.morphogenProductionSource
  morphogenDegradationClosed : M.morphogenDegradation

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.steadyStateReached ∧ M.gradientRange ∧
  M.diffusionCoefficientPositive ∧ M.morphogenProductionSource ∧
  M.morphogenDegradation

theorem morphogen_gradient_closed_from_evidence
    (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.steadyStateReachedClosed
    (And.intro E.gradientRangeClosed
      (And.intro E.diffusionCoefficientPositiveClosed
        (And.intro E.morphogenProductionSourceClosed
          E.morphogenDegradationClosed)))

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse