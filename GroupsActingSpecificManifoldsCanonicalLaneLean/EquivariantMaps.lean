import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure EquivariantMapStructure (M N : Type) [TopologicalSpace M] [TopologicalSpace N] (G : Group) where
  actionM : G → M → M
  actionN : G → N → N
  map : M → N
  continuousMap : Continuous map
  equivariance : ∀ (g : G) (x : M), map (actionM g x) = actionN g (map x)

structure EquivariantMapEvidence (E : EquivariantMapStructure M N G) where
  continuousMapClosed : E.continuousMap
  equivarianceClosed : E.equivariance

def EquivariantMapClosed (E : EquivariantMapStructure M N G) : Prop :=
  E.continuousMap ∧ E.equivariance

theorem equivariant_map_closed_from_evidence (E : EquivariantMapStructure M N G) (Ev : EquivariantMapEvidence E) : EquivariantMapClosed E :=
  And.intro Ev.continuousMapClosed Ev.equivarianceClosed

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse