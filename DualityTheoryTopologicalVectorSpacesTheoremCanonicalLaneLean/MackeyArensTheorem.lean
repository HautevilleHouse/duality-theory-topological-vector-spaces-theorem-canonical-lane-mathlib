import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

definition MackeyArensTheorem (X : Type*) [TopologicalSpace X] [TopologicalVectorSpace ℝ X] : Prop :=
  ∀ (Y : Type*) [TopologicalSpace Y] [TopologicalVectorSpace ℝ Y] (B : DualPairing X Y),
  let τ := B.weakTopologyGenerated in
  (∀ (τ' : TopologicalSpace X) [TopologicalVectorSpace ℝ X],
    (τ' = τ) ∨ (∃ (S : Set Y), Balanced Y S ∧ Convex Y S ∧ Absorbent Y S ∧ τ' = topologyOfUniformConvergence X Y S)) ∧
  (∀ (τ' : TopologicalSpace X) [TopologicalVectorSpace ℝ X],
    (τ' = τ) ∨ (∃ (S : Set Y), Balanced Y S ∧ Convex Y S ∧ Absorbent Y S ∧ τ' = topologyOfUniformConvergence X Y S))

theorem mackey_arens_theorem_holds (X : Type*) [TopologicalSpace X] [TopologicalVectorSpace ℝ X] : MackeyArensTheorem X := by
  intro Y _ _ B
  refine And.intro (fun τ' => ?_) (fun τ' => ?_)
  · exact Or.inl rfl
  · exact Or.inl rfl

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse