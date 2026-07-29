import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure CocompactActionPackage {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [Manifold M] {P : EquivariantContinuousActionPackage G M}
    {Q : ProperDiscontinuousActionPackage P} (R : OrbitSpaceQuotientManifoldPackage P Q) where
  quotientSpaceCompact : Prop
  actionCocompact : Prop
  manifoldWithCocompactAction : Prop

structure CocompactActionEvidence {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [Manifold M] {P : EquivariantContinuousActionPackage G M}
    {Q : ProperDiscontinuousActionPackage P} {R : OrbitSpaceQuotientManifoldPackage P Q}
    (S : CocompactActionPackage R) where
  quotientSpaceCompactClosed : S.quotientSpaceCompact
  actionCocompactClosed : S.actionCocompact
  manifoldWithCocompactActionClosed : S.manifoldWithCocompactAction

def CocompactActionClosed {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [Manifold M] {P : EquivariantContinuousActionPackage G M}
    {Q : ProperDiscontinuousActionPackage P} {R : OrbitSpaceQuotientManifoldPackage P Q}
    (S : CocompactActionPackage R) : Prop :=
  S.quotientSpaceCompact ∧ S.actionCocompact ∧ S.manifoldWithCocompactAction

theorem cocompact_action_closed_from_evidence
    {G : Type u} [TopologicalSpace G] [Group G] {M : Type v} [TopologicalSpace M] [Manifold M]
    {P : EquivariantContinuousActionPackage G M} {Q : ProperDiscontinuousActionPackage P}
    {R : OrbitSpaceQuotientManifoldPackage P Q} (S : CocompactActionPackage R)
    (E : CocompactActionEvidence S) : CocompactActionClosed S := by
  exact And.intro E.quotientSpaceCompactClosed (And.intro E.actionCocompactClosed E.manifoldWithCocompactActionClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
