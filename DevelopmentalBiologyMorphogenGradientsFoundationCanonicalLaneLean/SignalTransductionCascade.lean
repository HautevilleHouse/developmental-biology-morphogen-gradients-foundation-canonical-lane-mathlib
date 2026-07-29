import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure SignalTransductionPackage where
  morphogenSignal : Type u
  intracellularMediator : Type v
  phosphorylationRate : ℝ
  dephosphorylationRate : ℝ
  nuclearTranslocationRate : ℝ
  geneExpressionResponse : ℝ
  cascadeAmplification : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  phosphorylationRatePositive : S.phosphorylationRate > 0
  dephosphorylationRateNonnegative : S.dephosphorylationRate ≥ 0
  nuclearTranslocationRatePositive : S.nuclearTranslocationRate > 0
  geneExpressionResponsePositive : S.geneExpressionResponse ≥ 0
  cascadeAmplificationClosed : S.cascadeAmplification

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.phosphorylationRate > 0 ∧ S.dephosphorylationRate ≥ 0 ∧
  S.nuclearTranslocationRate > 0 ∧ S.geneExpressionResponse ≥ 0 ∧
  S.cascadeAmplification

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage)
    (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.phosphorylationRatePositive
    (And.intro E.dephosphorylationRateNonnegative
      (And.intro E.nuclearTranslocationRatePositive
        (And.intro E.geneExpressionResponsePositive E.cascadeAmplificationClosed)))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse