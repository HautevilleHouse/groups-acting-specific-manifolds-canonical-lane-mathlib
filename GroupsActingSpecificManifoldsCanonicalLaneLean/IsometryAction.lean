import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.GroupActionBasic

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure IsometryActionPackage (M : Type) (G : GroupActionPackage M) where
  isometryCondition : Prop
  preservedMetric : Prop
  distancePreserving : Prop
  volumePreserving : Prop
  geodesicInvariance : Prop

structure IsometryActionEvidence (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) where
  isometryConditionClosed : I.isometryCondition
  preservedMetricClosed : I.preservedMetric
  distancePreservingClosed : I.distancePreserving
  volumePreservingClosed : I.volumePreserving
  geodesicInvarianceClosed : I.geodesicInvariance

def IsometryActionClosed (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) : Prop :=
  I.isometryCondition ∧ I.preservedMetric ∧ I.distancePreserving ∧
  I.volumePreserving ∧ I.geodesicInvariance

theorem isometry_action_closed_from_evidence (M : Type) (G : GroupActionPackage M)
    (I : IsometryActionPackage M G) (E : IsometryActionEvidence M G I) :
    IsometryActionClosed M G I := by
  exact And.intro E.isometryConditionClosed
    (And.intro E.preservedMetricClosed
      (And.intro E.distancePreservingClosed
        (And.intro E.volumePreservingClosed E.geodesicInvarianceClosed)))

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse