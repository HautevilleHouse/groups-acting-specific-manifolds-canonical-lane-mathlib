import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure OrbitSpaceQuotientManifoldPackage {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [Manifold M] (P : EquivariantContinuousActionPackage G M)
    (Q : ProperDiscontinuousActionPackage P) where
  quotientSpace : Type w
  quotientTopology : TopologicalSpace quotientSpace
  quotientManifold : Prop
  projectionMap : M → quotientSpace
  projectionSmooth : Prop

structure OrbitSpaceQuotientManifoldEvidence {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [Manifold M] {P : EquivariantContinuousActionPackage G M}
    {Q : ProperDiscontinuousActionPackage P} (R : OrbitSpaceQuotientManifoldPackage P Q) where
  quotientManifoldClosed : R.quotientManifold
  projectionSmoothClosed : R.projectionSmooth

def OrbitSpaceQuotientManifoldClosed {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] [Manifold M] {P : EquivariantContinuousActionPackage G M}
    {Q : ProperDiscontinuousActionPackage P} (R : OrbitSpaceQuotientManifoldPackage P Q) : Prop :=
  R.quotientManifold ∧ R.projectionSmooth

theorem orbit_space_quotient_manifold_closed_from_evidence
    {G : Type u} [TopologicalSpace G] [Group G] {M : Type v} [TopologicalSpace M] [Manifold M]
    {P : EquivariantContinuousActionPackage G M} {Q : ProperDiscontinuousActionPackage P}
    (R : OrbitSpaceQuotientManifoldPackage P Q) (E : OrbitSpaceQuotientManifoldEvidence R) :
    OrbitSpaceQuotientManifoldClosed R := by
  exact And.intro E.quotientManifoldClosed E.projectionSmoothClosed

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
