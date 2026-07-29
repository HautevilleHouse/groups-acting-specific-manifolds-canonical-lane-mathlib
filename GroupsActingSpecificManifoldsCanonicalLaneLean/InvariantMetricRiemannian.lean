import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure InvariantMetricRiemannianPackage {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [RiemannianManifold M] (P : EquivariantContinuousActionPackage G M) where
  invariantRiemannianMetric : Prop
  isometricAction : Prop
  geodesicCompletenessUnderAction : Prop

structure InvariantMetricRiemannianEvidence {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [RiemannianManifold M] {P : EquivariantContinuousActionPackage G M}
    (T : InvariantMetricRiemannianPackage P) where
  invariantRiemannianMetricClosed : T.invariantRiemannianMetric
  isometricActionClosed : T.isometricAction
  geodesicCompletenessUnderActionClosed : T.geodesicCompletenessUnderAction

def InvariantMetricRiemannianClosed {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [RiemannianManifold M] {P : EquivariantContinuousActionPackage G M}
    (T : InvariantMetricRiemannianPackage P) : Prop :=
  T.invariantRiemannianMetric ∧ T.isometricAction ∧ T.geodesicCompletenessUnderAction

theorem invariant_metric_riemannian_closed_from_evidence
    {G : Type u} [TopologicalSpace G] [Group G] {M : Type v} [TopologicalSpace M] [RiemannianManifold M]
    {P : EquivariantContinuousActionPackage G M} (T : InvariantMetricRiemannianPackage P)
    (E : InvariantMetricRiemannianEvidence T) : InvariantMetricRiemannianClosed T := by
  exact And.intro E.invariantRiemannianMetricClosed (And.intro E.isometricActionClosed E.geodesicCompletenessUnderActionClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
