import Mathlib.Topology.Algebra.Module.WeakDual

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure WeakDualPackage where
  originalSpace : Type u
  originalTopology : TopologicalSpace originalSpace
  weakDual : Type v
  weakDualTopology : TopologicalSpace weakDual
  canonicalPairing : originalSpace → weakDual → ℝ
  pairingContinuous : Prop
  weakDualSeparatesPoints : Prop

def WeakDualEvidence (W : WeakDualPackage) : Prop :=
  W.pairingContinuous ∧ W.weakDualSeparatesPoints

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse