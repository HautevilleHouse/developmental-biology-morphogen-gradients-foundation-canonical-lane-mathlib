import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure GeneRegulatoryPackage where
  regulatoryNetwork : Type u
  targetGene : Type v
  transcriptionFactorActivity : ℝ
  bindingSiteAffinity : ℝ
  transcriptionalResponse : ℝ
  feedbackLoopStrength : ℝ
  networkStability : Prop

structure GeneRegulatoryEvidence (G : GeneRegulatoryPackage) where
  transcriptionFactorActivityPositive : G.transcriptionFactorActivity > 0
  bindingSiteAffinityPositive : G.bindingSiteAffinity > 0
  transcriptionalResponsePositive : G.transcriptionalResponse ≥ 0
  feedbackLoopStrengthNonzero : G.feedbackLoopStrength ≠ 0
  networkStabilityClosed : G.networkStability

def GeneRegulatoryClosed (G : GeneRegulatoryPackage) : Prop :=
  G.transcriptionFactorActivity > 0 ∧ G.bindingSiteAffinity > 0 ∧
  G.transcriptionalResponse ≥ 0 ∧ G.feedbackLoopStrength ≠ 0 ∧ G.networkStability

theorem gene_regulatory_closed_from_evidence (G : GeneRegulatoryPackage)
    (E : GeneRegulatoryEvidence G) : GeneRegulatoryClosed G := by
  exact And.intro E.transcriptionFactorActivityPositive
    (And.intro E.bindingSiteAffinityPositive
      (And.intro E.transcriptionalResponsePositive
        (And.intro E.feedbackLoopStrengthNonzero E.networkStabilityClosed)))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse