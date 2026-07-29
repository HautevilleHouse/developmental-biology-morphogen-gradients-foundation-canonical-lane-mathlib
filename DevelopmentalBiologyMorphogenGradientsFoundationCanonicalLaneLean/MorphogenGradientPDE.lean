import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenGradientPDEPackage where
  spaceDomain : Type u
  timeDomain : Type v
  concentrationField : spaceDomain -> timeDomain -> Type w
  reactionDiffusionEquation : Prop
  sourceTerm : Prop
  degradationTerm : Prop
  boundaryConditions : Prop
  initialCondition : Prop

structure MorphogenGradientPDEEvidence (P : MorphogenGradientPDEPackage) where
  reactionDiffusionEquationClosed : P.reactionDiffusionEquation
  sourceTermClosed : P.sourceTerm
  degradationTermClosed : P.degradationTerm
  boundaryConditionsClosed : P.boundaryConditions
  initialConditionClosed : P.initialCondition

def MorphogenGradientPDEClosed (P : MorphogenGradientPDEPackage) : Prop :=
  P.reactionDiffusionEquation ∧ P.sourceTerm ∧ P.degradationTerm ∧
  P.boundaryConditions ∧ P.initialCondition

theorem morphogen_gradient_pde_closed_from_evidence (P : MorphogenGradientPDEPackage)
    (E : MorphogenGradientPDEEvidence P) : MorphogenGradientPDEClosed P := by
  exact And.intro E.reactionDiffusionEquationClosed
    (And.intro E.sourceTermClosed
      (And.intro E.degradationTermClosed
        (And.intro E.boundaryConditionsClosed E.initialConditionClosed)))

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse