import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean.FrenchFlagModel
import HautevilleHouse.DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean.MorphogenTransport

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure GradientInterpretationPackage {P : MorphogenGradientPDEPackage}
    {F : FrenchFlagModelPackage P} {T : MorphogenTransportPackage P} where
  gradientStability : Prop
  positionalInformation : Prop
  noiseRobustness : Prop
  scalingProperty : Prop

structure GradientInterpretationEvidence {P : MorphogenGradientPDEPackage}
    {F : FrenchFlagModelPackage P} {T : MorphogenTransportPackage P}
    (G : GradientInterpretationPackage P F T) where
  gradientStabilityClosed : G.gradientStability
  positionalInformationClosed : G.positionalInformation
  noiseRobustnessClosed : G.noiseRobustness
  scalingPropertyClosed : G.scalingProperty

def GradientInterpretationClosed {P : MorphogenGradientPDEPackage}
    {F : FrenchFlagModelPackage P} {T : MorphogenTransportPackage P}
    (G : GradientInterpretationPackage P F T) : Prop :=
  G.gradientStability ∧ G.positionalInformation ∧
  G.noiseRobustness ∧ G.scalingProperty

theorem gradient_interpretation_closed_from_evidence {P : MorphogenGradientPDEPackage}
    {F : FrenchFlagModelPackage P} {T : MorphogenTransportPackage P}
    (G : GradientInterpretationPackage P F T) (E : GradientInterpretationEvidence G) :
    GradientInterpretationClosed G := by
  exact And.intro E.gradientStabilityClosed
    (And.intro E.positionalInformationClosed
      (And.intro E.noiseRobustnessClosed E.scalingPropertyClosed))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse