import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure ReceptorBindingPackage where
  ligand : Type u
  receptor : Type v
  bindingRate : ℝ
  unbindingRate : ℝ
  bindingAffinity : ℝ
  occupancyDynamics : ligand → receptor → ℝ → ℝ
  equilibriumCondition : Prop

structure ReceptorBindingEvidence (R : ReceptorBindingPackage) where
  bindingRatePositive : R.bindingRate > 0
  unbindingRateNonnegative : R.unbindingRate ≥ 0
  bindingAffinityPositive : R.bindingAffinity > 0
  equilibriumConditionClosed : R.equilibriumCondition

def ReceptorBindingClosed (R : ReceptorBindingPackage) : Prop :=
  R.bindingRate > 0 ∧ R.unbindingRate ≥ 0 ∧ R.bindingAffinity > 0 ∧ R.equilibriumCondition

theorem receptor_binding_closed_from_evidence (R : ReceptorBindingPackage)
    (E : ReceptorBindingEvidence R) : ReceptorBindingClosed R := by
  exact And.intro E.bindingRatePositive
    (And.intro E.unbindingRateNonnegative
      (And.intro E.bindingAffinityPositive E.equilibriumConditionClosed))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse