import canonicalLaneMathlib.AdmissibleClass
import GroupsActingSpecificManifoldsCanonicalLaneLean.GroupActionObject

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure OrbitClassification (G : GroupActionObject) where
  orbitSpace : Type
  projectionMap : G.manifold → orbitSpace
  fibersAreOrbits : ∀ x : G.manifold, { y : G.manifold | projectionMap y = projectionMap x } = { y | ∃ g : G.groupType, y = G.action g x }
  orbitSpaceTopology : TopologicalSpace orbitSpace
  projectionContinuous : Continuous projectionMap
  fibersClosed : Prop
  fibersAreOrbitsClosed : fibersAreOrbits
  projectionContinuousClosed : projectionContinuous
  fibersClosedClosed : fibersClosed

def OrbitClassificationClosed (G : GroupActionObject) (O : OrbitClassification G) : Prop :=
  O.fibersAreOrbits ∧ O.projectionContinuous ∧ O.fibersClosed

theorem orbit_classification_closed_from_evidence (G : GroupActionObject) (O : OrbitClassification G) :
    OrbitClassificationClosed G O := by
  exact And.intro O.fibersAreOrbitsClosed (And.intro O.projectionContinuousClosed O.fibersClosedClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse