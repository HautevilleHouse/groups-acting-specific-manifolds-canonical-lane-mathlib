import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.IsometryAction

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure PolarActionPackage (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) where
  sectionExists : Prop
  sliceRepresentation : Prop
  orbitTypeStratification : Prop
  principalOrbit : Prop
  exceptionalOrbits : Prop

def PolarActionClosed (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (P : PolarActionPackage M G I) : Prop :=
  P.sectionExists ∧ P.sliceRepresentation ∧ P.orbitTypeStratification ∧
  P.principalOrbit ∧ P.exceptionalOrbits

structure PolarActionEvidence (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (P : PolarActionPackage M G I) where
  sectionExistsClosed : P.sectionExists
  sliceRepresentationClosed : P.sliceRepresentation
  orbitTypeStratificationClosed : P.orbitTypeStratification
  principalOrbitClosed : P.principalOrbit
  exceptionalOrbitsClosed : P.exceptionalOrbits

theorem polar_action_closed_from_evidence (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (P : PolarActionPackage M G I)
    (E : PolarActionEvidence M G I P) : PolarActionClosed M G I P := by
  exact And.intro E.sectionExistsClosed
    (And.intro E.sliceRepresentationClosed
      (And.intro E.orbitTypeStratificationClosed
        (And.intro E.principalOrbitClosed E.exceptionalOrbitsClosed)))

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse