import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

structure CellCellAdhesionPackage where
  adhesionMolecules : Type u
  cellSurfaceLocalization : Type v
  adhesionBonds : Type w
  adhesionStrengthSufficient : Prop
  bondFormationDynamic : Prop
  homophilicInteractions : Prop
  heterophilicInteractions : Prop
  signalingRecruitment : Prop

structure CellCellAdhesionEvidence (C : CellCellAdhesionPackage) where
  adhesionStrengthSufficientClosed : C.adhesionStrengthSufficient
  bondFormationDynamicClosed : C.bondFormationDynamic
  homophilicInteractionsClosed : C.homophilicInteractions
  heterophilicInteractionsClosed : C.heterophilicInteractions
  signalingRecruitmentClosed : C.signalingRecruitment

def CellCellAdhesionClosed (C : CellCellAdhesionPackage) : Prop :=
  C.adhesionStrengthSufficient ∧ C.bondFormationDynamic ∧
  C.homophilicInteractions ∧ C.heterophilicInteractions ∧
  C.signalingRecruitment

theorem cell_cell_adhesion_closed_from_evidence
    (C : CellCellAdhesionPackage) (E : CellCellAdhesionEvidence C) :
    CellCellAdhesionClosed C := by
  exact And.intro E.adhesionStrengthSufficientClosed
    (And.intro E.bondFormationDynamicClosed
      (And.intro E.homophilicInteractionsClosed
        (And.intro E.heterophilicInteractionsClosed
          E.signalingRecruitmentClosed)))

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse