import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean.MorphogenGradientPDE

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure FrenchFlagModelPackage {P : MorphogenGradientPDEPackage} where
  morphogenSource : Prop
  thresholdConcentration : Prop
  downstreamGeneActivation : Prop
  spatialDomainsDefined : Prop
  cellResponseLogic : Prop

structure FrenchFlagModelEvidence {P : MorphogenGradientPDEPackage}
    (F : FrenchFlagModelPackage P) where
  morphogenSourceClosed : F.morphogenSource
  thresholdConcentrationClosed : F.thresholdConcentration
  downstreamGeneActivationClosed : F.downstreamGeneActivation
  spatialDomainsDefinedClosed : F.spatialDomainsDefined
  cellResponseLogicClosed : F.cellResponseLogic

def FrenchFlagModelClosed {P : MorphogenGradientPDEPackage}
    (F : FrenchFlagModelPackage P) : Prop :=
  F.morphogenSource ∧ F.thresholdConcentration ∧
  F.downstreamGeneActivation ∧ F.spatialDomainsDefined ∧ F.cellResponseLogic

theorem french_flag_model_closed_from_evidence {P : MorphogenGradientPDEPackage}
    (F : FrenchFlagModelPackage P) (E : FrenchFlagModelEvidence F) :
    FrenchFlagModelClosed F := by
  exact And.intro E.morphogenSourceClosed
    (And.intro E.thresholdConcentrationClosed
      (And.intro E.downstreamGeneActivationClosed
        (And.intro E.spatialDomainsDefinedClosed E.cellResponseLogicClosed)))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse