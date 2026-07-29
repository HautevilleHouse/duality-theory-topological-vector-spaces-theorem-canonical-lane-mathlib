import Mathlib.Topology.Algebra.Module.LocallyConvex

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure LocallyConvexStructure where
  abs : Type u
  linearTopology : TopologicalSpace abs
  locallyConvex : Prop
  barrelled : Prop
  bornological : Prop
  reflexivityCondition : Prop

def LocallyConvexEvidence (L : LocallyConvexStructure) : Prop :=
  L.locallyConvex ∧ L.barrelled ∧ L.bornological ∧ L.reflexivityCondition

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse