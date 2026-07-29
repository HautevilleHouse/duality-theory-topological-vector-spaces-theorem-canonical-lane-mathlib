import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.TopologicalVectorSpace
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.BanachAlaoglu

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure BipolarTheoremPackage {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} (B : BanachAlaogluPackage _) where
  bipolarSetClosed : Prop
  polarOfPolar : Prop
  doublePolarEqualsClConvexHull : Prop

structure BipolarTheoremEvidence {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} {B : BanachAlaogluPackage _}
    (T : BipolarTheoremPackage B) where
  bipolarSetClosedClosed : T.bipolarSetClosed
  polarOfPolarClosed : T.polarOfPolar
  doublePolarEqualsClConvexHullClosed : T.doublePolarEqualsClConvexHull

def BipolarTheoremClosed {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} {B : BanachAlaogluPackage _}
    (T : BipolarTheoremPackage B) : Prop :=
  T.bipolarSetClosed ∧ T.polarOfPolar ∧ T.doublePolarEqualsClConvexHull

theorem bipolar_theorem_closed_from_evidence
    {V : TopologicalVectorSpacePackage} {W : TopologicalVectorSpacePackage}
    {P : DualPairingPackage V W} {B : BanachAlaogluPackage _}
    (T : BipolarTheoremPackage B) (E : BipolarTheoremEvidence T) : BipolarTheoremClosed T := by
  exact And.intro E.bipolarSetClosedClosed
    (And.intro E.polarOfPolarClosed E.doublePolarEqualsClConvexHullClosed)

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse