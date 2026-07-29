import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.WeakTopology

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

open WeakTopology

struct Barrel (V : TopologicalVectorSpace) where
  set : Set V.carrier
  absorbing : Prop
  balanced : Prop
  convex : Prop
  closed : Prop

struct BarrelledSpace (V : TopologicalVectorSpace) where
  isBarrelled : Prop
  barrelCondition : Prop
  uniformBoundednessPrinciple : Prop
  weakBoundednessStrongBoundedness : Prop

struct BarrelledSpaceEvidence (V : TopologicalVectorSpace) (B : BarrelledSpace V) where
  barrelConditionClosed : B.barrelCondition
  uniformBoundednessPrincipleClosed : B.uniformBoundednessPrinciple
  weakBoundednessStrongBoundednessClosed : B.weakBoundednessStrongBoundedness

def BarrelledSpaceClosed (V : TopologicalVectorSpace) (B : BarrelledSpace V) : Prop :=
  B.barrelCondition ∧ B.uniformBoundednessPrinciple ∧ B.weakBoundednessStrongBoundedness

theorem barrelled_space_closed_from_evidence (V : TopologicalVectorSpace) (B : BarrelledSpace V)
    (E : BarrelledSpaceEvidence V B) : BarrelledSpaceClosed V B := by
  exact And.intro E.barrelConditionClosed
    (And.intro E.uniformBoundednessPrincipleClosed E.weakBoundednessStrongBoundednessClosed)

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse