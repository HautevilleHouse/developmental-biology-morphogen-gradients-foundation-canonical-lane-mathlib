import DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean.MorphogenAdmissibleClass

/-!
# Reaction-Diffusion PDE Package for Morphogen Gradients
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure ReactionDiffusionPDEPackage where
  diffusionCoefficient : ℝ
  degradationRate : ℝ
  sourceTerm : ℝ → ℝ → ℝ  -- function of space and time
  boundaryConditions : Prop
  initialConcentration : Prop

def ReactionDiffusionPDEValid (P : ReactionDiffusionPDEPackage) : Prop :=
  P.diffusionCoefficient > 0 ∧ P.degradationRate ≥ 0 ∧ P.boundaryConditions

structure ReactionDiffusionPDEBridge (A : MorphogenAdmissibleClass) where
  package : ReactionDiffusionPDEPackage
  valid : ReactionDiffusionPDEValid package
  bridgeToGradient : bridgeClosed A

theorem reaction_diffusion_pde_bridge_from_package
    (A : MorphogenAdmissibleClass) (B : ReactionDiffusionPDEBridge A) : bridgeClosed A := by
  exact B.bridgeToGradient

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse