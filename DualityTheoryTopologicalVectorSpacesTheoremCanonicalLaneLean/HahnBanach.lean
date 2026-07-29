import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.TopologicalVectorSpace
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure HahnBanachPackage (V : TopologicalVectorSpacePackage) where
  subspaceSeparation : Prop
  extensionOfLinearFunctional : Prop
  localConvexImpliesSeparation : Prop

structure HahnBanachEvidence (H : HahnBanachPackage V) where
  subspaceSeparationClosed : H.subspaceSeparation
  extensionOfLinearFunctionalClosed : H.extensionOfLinearFunctional
  localConvexImpliesSeparationClosed : H.localConvexImpliesSeparation

def HahnBanachClosed (H : HahnBanachPackage V) : Prop :=
  H.subspaceSeparation ∧ H.extensionOfLinearFunctional ∧ H.localConvexImpliesSeparation

theorem hahn_banach_closed_from_evidence (H : HahnBanachPackage V) (E : HahnBanachEvidence H) :
    HahnBanachClosed H := by
  exact And.intro E.subspaceSeparationClosed
    (And.intro E.extensionOfLinearFunctionalClosed E.localConvexImpliesSeparationClosed)

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse