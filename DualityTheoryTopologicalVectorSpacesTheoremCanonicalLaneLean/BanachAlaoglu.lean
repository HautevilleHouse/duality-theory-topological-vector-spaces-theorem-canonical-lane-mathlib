import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.TopologicalVectorSpace
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.StrongWeakTopology

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure BanachAlaogluPackage {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} (Wk : WeakTopologyPackage P) where
  polarUnitBallCompact : Prop
  weakStarCompact : Prop

structure BanachAlaogluEvidence {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} {Wk : WeakTopologyPackage P}
    (B : BanachAlaogluPackage Wk) where
  polarUnitBallCompactClosed : B.polarUnitBallCompact
  weakStarCompactClosed : B.weakStarCompact

def BanachAlaogluClosed {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} {Wk : WeakTopologyPackage P}
    (B : BanachAlaogluPackage Wk) : Prop :=
  B.polarUnitBallCompact ∧ B.weakStarCompact

theorem banach_alaoglu_closed_from_evidence
    {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} {Wk : WeakTopologyPackage P}
    (B : BanachAlaogluPackage Wk) (E : BanachAlaogluEvidence B) : BanachAlaogluClosed B := by
  exact And.intro E.polarUnitBallCompactClosed E.weakStarCompactClosed

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse