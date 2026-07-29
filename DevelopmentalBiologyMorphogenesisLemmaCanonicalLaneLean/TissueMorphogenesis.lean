import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean

structure TissueMorphogenesisPackage where
  tissue : Type u
  cellPopulations : Type v
  morphogeneticEvents : Type w
  tissueShapeChange : Prop
  cellRearrangement : Prop
  coordinatedMigration : Prop
  extracellularMatrixRemodeling : Prop
  forceGenerationSufficient : Prop

structure TissueMorphogenesisEvidence (T : TissueMorphogenesisPackage) where
  tissueShapeChangeClosed : T.tissueShapeChange
  cellRearrangementClosed : T.cellRearrangement
  coordinatedMigrationClosed : T.coordinatedMigration
  extracellularMatrixRemodelingClosed : T.extracellularMatrixRemodeling
  forceGenerationSufficientClosed : T.forceGenerationSufficient

def TissueMorphogenesisClosed (T : TissueMorphogenesisPackage) : Prop :=
  T.tissueShapeChange ∧ T.cellRearrangement ∧
  T.coordinatedMigration ∧ T.extracellularMatrixRemodeling ∧
  T.forceGenerationSufficient

theorem tissue_morphogenesis_closed_from_evidence
    (T : TissueMorphogenesisPackage) (E : TissueMorphogenesisEvidence T) :
    TissueMorphogenesisClosed T := by
  exact And.intro E.tissueShapeChangeClosed
    (And.intro E.cellRearrangementClosed
      (And.intro E.coordinatedMigrationClosed
        (And.intro E.extracellularMatrixRemodelingClosed
          E.forceGenerationSufficientClosed)))

end DevelopmentalBiologyMorphogenesisLemmaCanonicalLaneLean
end HautevilleHouse