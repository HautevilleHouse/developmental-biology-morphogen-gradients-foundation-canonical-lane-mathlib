import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  sourceProduction : Prop
  diffusionCoefficient : ℝ
  decayRate : ℝ
  steadyStateProfile : ℝ → ℝ
  targetGeneActivation : ℝ → Prop

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.sourceProduction ∧ M.steadyStateProfile 0 > 0

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse
