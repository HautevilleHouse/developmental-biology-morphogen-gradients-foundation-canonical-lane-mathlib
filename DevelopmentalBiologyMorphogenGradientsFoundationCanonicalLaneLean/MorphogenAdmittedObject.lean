import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MorphogenAdmittedObject where
  gradient : MorphogenGradientPackage
  morphogenClosed : MorphogenGradientClosed gradient
  conclusion : morphogenClosed

def MorphogenWitnessClosed (O : MorphogenAdmittedObject) : Prop :=
  O.morphogenClosed

end DevelopmentalBiologyMorphogenGradientsFoundationCanonicalLaneLean
end HautevilleHouse
