import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure TopologicalVectorSpacePackage where
  underlyingField : Type u
  fieldTopology : TopologicalSpace underlyingField
  vectorSpace : Type v
  vectorSpaceTopology : TopologicalSpace vectorSpace
  additionContinuous : Prop
  scalarMultiplicationContinuous : Prop
  hausdorff : Prop
  locallyConvex : Prop

structure TopologicalVectorSpaceEvidence (V : TopologicalVectorSpacePackage) where
  additionContinuousClosed : V.additionContinuous
  scalarMultiplicationContinuousClosed : V.scalarMultiplicationContinuous
  hausdorffClosed : V.hausdorff
  locallyConvexClosed : V.locallyConvex

def TopologicalVectorSpaceClosed (V : TopologicalVectorSpacePackage) : Prop :=
  V.additionContinuous ∧ V.scalarMultiplicationContinuous ∧ V.hausdorff ∧ V.locallyConvex

theorem topological_vector_space_closed_from_evidence
    (V : TopologicalVectorSpacePackage) (E : TopologicalVectorSpaceEvidence V) :
    TopologicalVectorSpaceClosed V := by
  exact And.intro E.additionContinuousClosed
    (And.intro E.scalarMultiplicationContinuousClosed
      (And.intro E.hausdorffClosed E.locallyConvexClosed))

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse