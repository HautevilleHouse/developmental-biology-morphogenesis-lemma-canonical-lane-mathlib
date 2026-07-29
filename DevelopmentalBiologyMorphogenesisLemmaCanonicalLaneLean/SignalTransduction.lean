import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

structure SignalTransductionPackage where
  ligand : Type u
  receptor : Type v
  intracellularCascade : Type w
  ligandReceptorBinding : Prop
  cascadeInitiation : Prop
  signalAmplification : Prop
  signalTermination : Prop
  nuclearTranslocation : Prop
  geneExpressionChange : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  ligandReceptorBindingClosed : S.ligandReceptorBinding
  cascadeInitiationClosed : S.cascadeInitiation
  signalAmplificationClosed : S.signalAmplification
  signalTerminationClosed : S.signalTermination
  nuclearTranslocationClosed : S.nuclearTranslocation
  geneExpressionChangeClosed : S.geneExpressionChange

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.ligandReceptorBinding ∧ S.cascadeInitiation ∧
  S.signalAmplification ∧ S.signalTermination ∧
  S.nuclearTranslocation ∧ S.geneExpressionChange

theorem signal_transduction_closed_from_evidence
    (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.cascadeInitiationClosed
      (And.intro E.signalAmplificationClosed
        (And.intro E.signalTerminationClosed
          (And.intro E.nuclearTranslocationClosed
            E.geneExpressionChangeClosed))))

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse