import Mathlib.Topology.Basic
import Mathlib.Analysis.NormedSpace.Basic

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

structure DTVSAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  isLocallyConvex : Prop
  dualSpace : Type v
  weakTopology : TopologicalSpace dualSpace
  strongTopology : TopologicalSpace dualSpace
  canonicalEmbedding : space → (dualSpace → ℝ)
  embeddingContinuous : Prop
  conclusion : embeddingContinuous

def DTVSWitnessClosed (O : DTVSAdmittedObject) : Prop :=
  O.embeddingContinuous

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse