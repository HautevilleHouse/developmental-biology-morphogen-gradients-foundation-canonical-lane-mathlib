import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenSource (A : AdmissibleClass) where
  morphogenType : Type u
  productionRate : morphogenType → ℝ
  localizationDomain : morphogenType → Set (A.object.space.carrier)
  sourceStrength : Prop
  localizedProduction : Prop

structure SourceProductionEvidence (A : AdmissibleClass) (M : MorphogenSource A) where
  sourceStrengthClosed : M.sourceStrength
  localizedProductionClosed : M.localizedProduction

def SourceProductionClosed (A : AdmissibleClass) (M : MorphogenSource A) : Prop :=
  M.sourceStrength ∧ M.localizedProduction

theorem source_production_closed_from_evidence (A : AdmissibleClass) (M : MorphogenSource A)
    (E : SourceProductionEvidence A M) : SourceProductionClosed A M := by
  exact And.intro E.sourceStrengthClosed E.localizedProductionClosed

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse