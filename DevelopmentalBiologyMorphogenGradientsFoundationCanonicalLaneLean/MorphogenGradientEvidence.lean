import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  sourceProductionClosed : M.sourceProduction
  steadyStateProfilePositive : M.steadyStateProfile 0 > 0

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.sourceProductionClosed E.steadyStateProfilePositive

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse
