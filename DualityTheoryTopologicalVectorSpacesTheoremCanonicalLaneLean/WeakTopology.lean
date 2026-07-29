import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

open DualPairing

structure WeakTopology (V : TopologicalVectorSpace) where
  weakDual : TopologicalVectorSpace
  weakDualTopology : TopologicalSpace (dual V)
  canonicalPairing : DualPairing V weakDual
  initialTopologyCharacterization : Prop
  hausdorffProperty : Prop
  boundednessEquivalence : Prop

structure WeakTopologyEvidence (V : TopologicalVectorSpace) (W : WeakTopology V) where
  initialTopologyCharacterizationClosed : W.initialTopologyCharacterization
  hausdorffPropertyClosed : W.hausdorffProperty
  boundednessEquivalenceClosed : W.boundednessEquivalence

def WeakTopologyClosed (V : TopologicalVectorSpace) (W : WeakTopology V) : Prop :=
  W.initialTopologyCharacterization ∧ W.hausdorffProperty ∧ W.boundednessEquivalence

theorem weak_topology_closed_from_evidence (V : TopologicalVectorSpace) (W : WeakTopology V)
    (E : WeakTopologyEvidence V W) : WeakTopologyClosed V W := by
  exact And.intro E.initialTopologyCharacterizationClosed
    (And.intro E.hausdorffPropertyClosed E.boundednessEquivalenceClosed)

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse