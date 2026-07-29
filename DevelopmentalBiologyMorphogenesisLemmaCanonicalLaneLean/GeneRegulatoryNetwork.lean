import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  genes : Type u
  regulatoryInteractions : Type v
  expressionDynamics : Type w
  networkStable : Prop
  requiredInteractionsPresent : Prop
  positiveRegulationCoherent : Prop
  negativeRegulationCoherent : Prop
  feedbackLoopsControlled : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  networkStableClosed : G.networkStable
  requiredInteractionsPresentClosed : G.requiredInteractionsPresent
  positiveRegulationCoherentClosed : G.positiveRegulationCoherent
  negativeRegulationCoherentClosed : G.negativeRegulationCoherent
  feedbackLoopsControlledClosed : G.feedbackLoopsControlled

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.networkStable ∧ G.requiredInteractionsPresent ∧
  G.positiveRegulationCoherent ∧ G.negativeRegulationCoherent ∧
  G.feedbackLoopsControlled

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.networkStableClosed
    (And.intro E.requiredInteractionsPresentClosed
      (And.intro E.positiveRegulationCoherentClosed
        (And.intro E.negativeRegulationCoherentClosed
          E.feedbackLoopsControlledClosed)))

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse