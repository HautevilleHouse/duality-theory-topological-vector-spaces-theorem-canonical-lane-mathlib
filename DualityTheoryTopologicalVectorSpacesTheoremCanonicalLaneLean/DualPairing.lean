import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure TopologicalVectorSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  vectorSpace : Module ℝ carrier
  continuousOps : Prop

dual : TopologicalVectorSpace → Type u

def dual (V : TopologicalVectorSpace) : Type u := V.carrier → ℝ

structure DualPairing (V W : TopologicalVectorSpace) where
  pairing : V.carrier → W.carrier → ℝ
  separatePoints : Prop
  separatePoints' : Prop
  bilinear : Prop
  continuous : Prop
  nondegenerate : Prop

structure DualPairingEvidence (V W : TopologicalVectorSpace) (P : DualPairing V W) where
  separatePointsClosed : P.separatePoints
  separatePointsClosed' : P.separatePoints'
  bilinearClosed : P.bilinear
  continuousClosed : P.continuous
  nondegenerateClosed : P.nondegenerate

def DualPairingClosed (V W : TopologicalVectorSpace) (P : DualPairing V W) : Prop :=
  P.separatePoints ∧ P.separatePoints' ∧ P.bilinear ∧ P.continuous ∧ P.nondegenerate

theorem dual_pairing_closed_from_evidence (V W : TopologicalVectorSpace) (P : DualPairing V W)
    (E : DualPairingEvidence V W P) : DualPairingClosed V W P := by
  exact And.intro E.separatePointsClosed
    (And.intro E.separatePointsClosed'
      (And.intro E.bilinearClosed
        (And.intro E.continuousClosed E.nondegenerateClosed)))

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse