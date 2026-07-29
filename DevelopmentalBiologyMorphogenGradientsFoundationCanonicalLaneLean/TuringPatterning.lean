import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure TuringPatterningPackage {M : MorphogenSourcePackage}
    {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    (R : RobustnessScalingPackage M P G) where
  selfOrganizingSpot : Prop
  inhibitorProduction : Prop
  patternWavelength : Prop
  symmetryBreaking : Prop
  selfOrganizingSpotTerm : selfOrganizingSpot
  inhibitorProductionTerm : inhibitorProduction
  patternWavelengthTerm : patternWavelength
  symmetryBreakingTerm : symmetryBreaking

structure TuringPatterningEvidence {M : MorphogenSourcePackage}
    {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    {R : RobustnessScalingPackage M P G}
    (T : TuringPatterningPackage M P G R) where
  selfOrganizingSpotClosed : T.selfOrganizingSpot
  inhibitorProductionClosed : T.inhibitorProduction
  patternWavelengthClosed : T.patternWavelength
  symmetryBreakingClosed : T.symmetryBreaking

def TuringPatterningClosed {M : MorphogenSourcePackage}
    {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    {R : RobustnessScalingPackage M P G}
    (T : TuringPatterningPackage M P G R) : Prop :=
  T.selfOrganizingSpot ∧ T.inhibitorProduction ∧
  T.patternWavelength ∧ T.symmetryBreaking

theorem turing_patterning_closed_from_evidence
    {M : MorphogenSourcePackage} {P : ReactionDiffusionPDEPackage M}
    {G : GradientInterpretationPackage M P}
    {R : RobustnessScalingPackage M P G}
    (T : TuringPatterningPackage M P G R)
    (E : TuringPatterningEvidence T) : TuringPatterningClosed T := by
  exact And.intro E.selfOrganizingSpotClosed
    (And.intro E.inhibitorProductionClosed
      (And.intro E.patternWavelengthClosed E.symmetryBreakingClosed))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse