import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenGradientPackage where
  ligand : Type u
  receptor : Type v
  diffusionCoefficient : ℝ
  degradationRate : ℝ
  productionRate : ℝ
  concentrationField : ligand → receptor → ℝ
  morphogenSource : Set ligand
  gradientRange : ℝ

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  diffusionCoefficientPositive : M.diffusionCoefficient > 0
  degradationRateNonnegative : M.degradationRate ≥ 0
  productionRateNonnegative : M.productionRate ≥ 0
  gradientRangeFinite : M.gradientRange < ∞

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.diffusionCoefficient > 0 ∧ M.degradationRate ≥ 0 ∧ M.productionRate ≥ 0 ∧ M.gradientRange < ∞

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage)
    (E : MorphogenGradientEvidence M) : MorphogenGradientClosed M := by
  exact And.intro E.diffusionCoefficientPositive
    (And.intro E.degradationRateNonnegative
      (And.intro E.productionRateNonnegative E.gradientRangeFinite))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse