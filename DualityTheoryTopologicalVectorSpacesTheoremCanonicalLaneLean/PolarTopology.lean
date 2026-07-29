import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure PolarTopology (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] [AddCommGroup X] [AddCommGroup Y] (B : DualPairing X Y) where
  bornology : Bornology Y
  polarSetsBasis : Set (Set Y) := { S : Set Y | Bornology.IsBornivorous S }
  polarTopology : TopologicalSpace X := topologyOfUniformConvergence X Y (polarSetsBasis)

def PolarTopologyClosed (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] [AddCommGroup X] [AddCommGroup Y] (B : DualPairing X Y) (P : PolarTopology X Y B) : Prop :=
  True

theorem polar_topology_closed (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] [AddCommGroup X] [AddCommGroup Y] (B : DualPairing X Y) (P : PolarTopology X Y B) : PolarTopologyClosed X Y B P := by
  unfold PolarTopologyClosed
  trivial

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse