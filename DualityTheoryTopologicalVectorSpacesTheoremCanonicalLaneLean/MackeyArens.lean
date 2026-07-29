import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure MackeyArensPackage (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y] (P : DualPairing X Y) where
  mackeyTopology : TopologicalSpace X
  weakTopology : TopologicalSpace X
  mackeyTopologyWeak : mackeyTopology = weakTopology := by
    infer_instance
  compatibleTopologies : Set (TopologicalSpace X)
  mackeyIsStrongest : ∀ τ ∈ compatibleTopologies, τ ≤ mackeyTopology
  weakIsWeakest : ∀ τ ∈ compatibleTopologies, weakTopology ≤ τ

structure MackeyArensEvidence (M : MackeyArensPackage X Y P) where
  mackeyTopologyWeakClosed : M.mackeyTopology = M.weakTopology
  compatibleTopologiesNonempty : M.compatibleTopologies.Nonempty
  mackeyIsStrongestClosed : ∀ τ ∈ M.compatibleTopologies, τ ≤ M.mackeyTopology
  weakIsWeakestClosed : ∀ τ ∈ M.compatibleTopologies, M.weakTopology ≤ τ

def MackeyArensClosed (M : MackeyArensPackage X Y P) : Prop :=
  (M.mackeyTopology = M.weakTopology) ∧ M.compatibleTopologies.Nonempty ∧
  (∀ τ ∈ M.compatibleTopologies, τ ≤ M.mackeyTopology) ∧
  (∀ τ ∈ M.compatibleTopologies, M.weakTopology ≤ τ)

theorem mackey_arens_closed_from_evidence (M : MackeyArensPackage X Y P) (E : MackeyArensEvidence M) :
    MackeyArensClosed M := by
  exact And.intro E.mackeyTopologyWeakClosed (And.intro E.compatibleTopologiesNonempty (And.intro E.mackeyIsStrongestClosed E.weakIsWeakestClosed))

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse