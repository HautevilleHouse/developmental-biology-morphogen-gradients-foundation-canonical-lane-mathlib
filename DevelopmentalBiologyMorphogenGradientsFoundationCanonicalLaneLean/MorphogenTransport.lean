import DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean.ReactionDiffusionPDE

/-!
# Morphogen Transport Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenTransportPackage where
  advectionVelocity : ℝ × ℝ × ℝ  -- vector field
  bindingRate : ℝ
  unbindingRate : ℝ
  receptorDensity : ℝ → ℝ → ℝ  -- function of space and time
  transportValid : Prop

def TransportValid (T : MorphogenTransportPackage) : Prop :=
  T.bindingRate > 0 ∧ T.unbindingRate > 0 ∧ T.advectionVelocity.1 ≠ 0

structure MorphogenTransportEvidence (T : MorphogenTransportPackage) where
  transportValidClosed : TransportValid T

theorem morphogen_transport_closed_from_evidence
    (T : MorphogenTransportPackage) (E : MorphogenTransportEvidence T) :
    TransportValid T := by
  exact E.transportValidClosed

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse