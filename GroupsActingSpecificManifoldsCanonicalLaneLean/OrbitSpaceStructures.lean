import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.GroupActionsOnManifolds

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure OrbitSpacePackage {G : GroupActionPackage} (H : GroupActionEvidence G) where
  orbitSpaceType : Type
  orbitSpaceTopology : TopologicalSpace orbitSpaceType
  quotientMapContinuous : Prop
  orbifoldStructure : Prop
  riemannianMetricInduced : Prop

structure OrbitSpaceEvidence {G : GroupActionPackage} {H : GroupActionEvidence G}
    (O : OrbitSpacePackage H) where
  quotientMapContinuousClosed : O.quotientMapContinuous
  orbifoldStructureClosed : O.orbifoldStructure
  riemannianMetricInducedClosed : O.riemannianMetricInduced

def OrbitSpaceClosed {G : GroupActionPackage} {H : GroupActionEvidence G}
    (O : OrbitSpacePackage H) : Prop :=
  O.quotientMapContinuous ∧ O.orbifoldStructure ∧ O.riemannianMetricInduced

theorem orbit_space_closed_from_evidence {G : GroupActionPackage} {H : GroupActionEvidence G}
    (O : OrbitSpacePackage H) (E : OrbitSpaceEvidence O) : OrbitSpaceClosed O := by
  exact And.intro E.quotientMapContinuousClosed
    (And.intro E.orbifoldStructureClosed E.riemannianMetricInducedClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
