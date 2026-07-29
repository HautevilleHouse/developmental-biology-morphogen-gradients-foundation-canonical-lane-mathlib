import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure DiffusionTransport (A : AdmissibleClass) where
  diffusionCoefficient : A.object.space.carrier → ℝ
  transportVelocity : A.object.space.carrier → ℝ
  fickLawSatisfied : Prop
  advectionTermPresent : Prop
  wellPosedInitialBoundary : Prop

structure DiffusionTransportEvidence (A : AdmissibleClass) (D : DiffusionTransport A) where
  fickLawSatisfiedClosed : D.fickLawSatisfied
  advectionTermPresentClosed : D.advectionTermPresent
  wellPosedInitialBoundaryClosed : D.wellPosedInitialBoundary

def DiffusionTransportClosed (A : AdmissibleClass) (D : DiffusionTransport A) : Prop :=
  D.fickLawSatisfied ∧ D.advectionTermPresent ∧ D.wellPosedInitialBoundary

theorem diffusion_transport_closed_from_evidence (A : AdmissibleClass) (D : DiffusionTransport A)
    (E : DiffusionTransportEvidence A D) : DiffusionTransportClosed A D := by
  exact And.intro E.fickLawSatisfiedClosed
    (And.intro E.advectionTermPresentClosed E.wellPosedInitialBoundaryClosed)

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse