import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.PolarAction

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure OrbitSpaceClassificationPackage (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (P : PolarActionPackage M G I) where
  orbitSpaceIsManifold : Prop
  orbitSpaceDimension : Prop
  orbitSpaceGeometry : Prop
  orbitSpaceTopology : Prop
  orbitSpaceSymmetry : Prop

structure OrbitSpaceClassificationEvidence (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (P : PolarActionPackage M G I)
    (O : OrbitSpaceClassificationPackage M G I P) where
  orbitSpaceIsManifoldClosed : O.orbitSpaceIsManifold
  orbitSpaceDimensionClosed : O.orbitSpaceDimension
  orbitSpaceGeometryClosed : O.orbitSpaceGeometry
  orbitSpaceTopologyClosed : O.orbitSpaceTopology
  orbitSpaceSymmetryClosed : O.orbitSpaceSymmetry

def OrbitSpaceClassificationClosed (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (P : PolarActionPackage M G I)
    (O : OrbitSpaceClassificationPackage M G I P) : Prop :=
  O.orbitSpaceIsManifold ∧ O.orbitSpaceDimension ∧ O.orbitSpaceGeometry ∧
  O.orbitSpaceTopology ∧ O.orbitSpaceSymmetry

theorem orbit_space_classification_closed_from_evidence
    (M : Type) (G : GroupActionPackage M) (I : IsometryActionPackage M G)
    (P : PolarActionPackage M G I) (O : OrbitSpaceClassificationPackage M G I P)
    (E : OrbitSpaceClassificationEvidence M G I P O) :
    OrbitSpaceClassificationClosed M G I P O := by
  exact And.intro E.orbitSpaceIsManifoldClosed
    (And.intro E.orbitSpaceDimensionClosed
      (And.intro E.orbitSpaceGeometryClosed
        (And.intro E.orbitSpaceTopologyClosed E.orbitSpaceSymmetryClosed)))

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse