import canonicalLaneMathlib.AdmissibleClass
import DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.BarrelTheorem
import DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.WeakTopology
import DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean.DualPairing

namespace HautevilleHouse
namespace DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DualPairingClosed (A.object : TopologicalVectorSpace) (A.object : TopologicalVectorSpace)
    (A.object : DualPairing (A.object : TopologicalVectorSpace) (A.object : TopologicalVectorSpace))

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedDualityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem constrained_duality_endgame (A : AdmissibleClass) : ConstrainedDualityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DualityTheoryTopologicalVectorSpacesTheoremCanonicalLaneLean
end HautevilleHouse