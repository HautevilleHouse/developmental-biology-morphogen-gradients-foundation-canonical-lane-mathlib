import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

structure MorphogenAdmittedObject where
  sourceGradientType : String
  concentrationField : Type u
  spatialDomain : Type v
  morphogenIdentity : Prop
  gradientWellDefined : concentrationField → spatialDomain → ℝ
  conclusion : Prop

structure MorphogenAdmissibleClass where
  object : MorphogenAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MorphogenAdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse