import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure PatternFormation (A : AdmissibleClass) (G : GradientFormation A M D) (S : SignalTransduction A G) where
  cellFateDecision : A.object.space.carrier → Type u
  spatialPattern : Set A.object.space.carrier
  boundaryFormation : Prop
  patternRobustness : Prop
  decisionMapped : ∀ x : A.object.space.carrier, cellFateDecision x
  boundaryFormed : boundaryFormation
  robustPattern : patternRobustness

structure PatternFormationEvidence (A : AdmissibleClass) (G : GradientFormation A M D) (S : SignalTransduction A G)
    (P : PatternFormation A G S) where
  decisionMappedClosed : ∀ x : A.object.space.carrier, P.cellFateDecision x
  boundaryFormedClosed : P.boundaryFormation
  robustPatternClosed : P.patternRobustness

def PatternFormationClosed (A : AdmissibleClass) (G : GradientFormation A M D) (S : SignalTransduction A G)
    (P : PatternFormation A G S) : Prop :=
  (∀ x : A.object.space.carrier, P.cellFateDecision x) ∧ P.boundaryFormation ∧ P.patternRobustness

theorem pattern_formation_closed_from_evidence (A : AdmissibleClass) (G : GradientFormation A M D) (S : SignalTransduction A G)
    (P : PatternFormation A G S) (E : PatternFormationEvidence A G S P) : PatternFormationClosed A G S P := by
  exact And.intro E.decisionMappedClosed (And.intro E.boundaryFormedClosed E.robustPatternClosed)

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse