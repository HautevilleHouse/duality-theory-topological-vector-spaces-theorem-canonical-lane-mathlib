import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.TopologicalVectorSpace
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure StrongTopologyPackage {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    (P : DualPairingPackage V W) where
  strongTopology : TopologicalSpace V.vectorSpace
  boundedConvergence : Prop
  polarNeighborhoodBasis : Prop

structure WeakTopologyPackage {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    (P : DualPairingPackage V W) where
  weakTopology : TopologicalSpace V.vectorSpace
  seminormsFromDual : Prop
  weakStarTopology : TopologicalSpace W.vectorSpace

structure StrongWeakEvidence {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} (S : StrongTopologyPackage P) (Wk : WeakTopologyPackage P) where
  strongClosed : S.boundedConvergence ∧ S.polarNeighborhoodBasis
  weakClosed : Wk.seminormsFromDual

def StrongWeakClosed {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} (S : StrongTopologyPackage P) (Wk : WeakTopologyPackage P) : Prop :=
  (S.boundedConvergence ∧ S.polarNeighborhoodBasis) ∧ Wk.seminormsFromDual

theorem strong_weak_closed_from_evidence
    {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} (S : StrongTopologyPackage P) (Wk : WeakTopologyPackage P)
    (E : StrongWeakEvidence S Wk) : StrongWeakClosed S Wk := by
  exact And.intro E.strongClosed E.weakClosed

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse