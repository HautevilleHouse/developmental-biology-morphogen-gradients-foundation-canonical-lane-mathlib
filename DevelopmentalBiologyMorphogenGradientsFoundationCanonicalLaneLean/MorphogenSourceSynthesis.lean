import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenSourcePackage where
  sourceCellType : Type u
  productionRate : Type v
  diffusionCoefficient : Type w
  degradationRate : Type x
  sourceLocalization : Prop
  productionRegulation : Prop
  sourceLocalizationTerm : sourceLocalization
  productionRegulationTerm : productionRegulation

structure MorphogenSourceEvidence (M : MorphogenSourcePackage) where
  sourceLocalizationClosed : M.sourceLocalization
  productionRegulationClosed : M.productionRegulation

def MorphogenSourceClosed (M : MorphogenSourcePackage) : Prop :=
  M.sourceLocalization ∧ M.productionRegulation

theorem morphogen_source_closed_from_evidence (M : MorphogenSourcePackage)
    (E : MorphogenSourceEvidence M) : MorphogenSourceClosed M := by
  exact And.intro E.sourceLocalizationClosed E.productionRegulationClosed

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse