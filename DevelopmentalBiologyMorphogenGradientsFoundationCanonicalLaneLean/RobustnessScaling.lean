import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure RobustnessScalingPackage {M : MorphogenSourcePackage}
    {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P} where
  sourceAmplitudeVariation : Prop
  embryoSizeScaling : Prop
  noiseBuffering : Prop
  scalingLawValid : Prop
  sourceAmplitudeVariationTerm : sourceAmplitudeVariation
  embryoSizeScalingTerm : embryoSizeScaling
  noiseBufferingTerm : noiseBuffering
  scalingLawValidTerm : scalingLawValid

structure RobustnessScalingEvidence {M : MorphogenSourcePackage}
    {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    (R : RobustnessScalingPackage M P G) where
  sourceAmplitudeVariationClosed : R.sourceAmplitudeVariation
  embryoSizeScalingClosed : R.embryoSizeScaling
  noiseBufferingClosed : R.noiseBuffering
  scalingLawValidClosed : R.scalingLawValid

def RobustnessScalingClosed {M : MorphogenSourcePackage}
    {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    (R : RobustnessScalingPackage M P G) : Prop :=
  R.sourceAmplitudeVariation ∧ R.embryoSizeScaling ∧
  R.noiseBuffering ∧ R.scalingLawValid

theorem robustness_scaling_closed_from_evidence
    {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    (R : RobustnessScalingPackage M P G)
    (E : RobustnessScalingEvidence R) : RobustnessScalingClosed R := by
  exact And.intro E.sourceAmplitudeVariationClosed
    (And.intro E.embryoSizeScalingClosed
      (And.intro E.noiseBufferingClosed E.scalingLawValidClosed))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse