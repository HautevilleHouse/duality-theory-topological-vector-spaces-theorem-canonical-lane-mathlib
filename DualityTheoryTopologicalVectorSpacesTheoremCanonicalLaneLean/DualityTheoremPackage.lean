import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DTVSAdmittedObject

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure DualityTheoremPackage where
  topologicalDual : Type u
  weakDual : Type v
  weakStarTopology : TopologicalSpace topologicalDual
  polarMap : topologicalDual → weakDual
  polarMapContinuous : Prop
  bipolarTheorem : Prop
  mackeyTheorem : Prop

def DualityTheoremEvidence (P : DualityTheoremPackage) : Prop :=
  P.polarMapContinuous ∧ P.bipolarTheorem ∧ P.mackeyTheorem

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse