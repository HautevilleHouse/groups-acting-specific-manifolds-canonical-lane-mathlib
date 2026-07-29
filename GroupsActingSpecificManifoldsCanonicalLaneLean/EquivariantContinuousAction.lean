import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure EquivariantContinuousActionPackage {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] where
  action : G → M → M
  continuousAction : Prop
  actionGroupHom : Prop
  faithfulAction : Prop

structure EquivariantContinuousActionEvidence {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] (P : EquivariantContinuousActionPackage G M) where
  continuousActionClosed : P.continuousAction
  actionGroupHomClosed : P.actionGroupHom
  faithfulActionClosed : P.faithfulAction

def EquivariantContinuousActionClosed {G : Type u} [TopologicalSpace G] [Group G]
    {M : Type v} [TopologicalSpace M] (P : EquivariantContinuousActionPackage G M) : Prop :=
  P.continuousAction ∧ P.actionGroupHom ∧ P.faithfulAction

theorem equivariant_continuous_action_closed_from_evidence
    {G : Type u} [TopologicalSpace G] [Group G] {M : Type v} [TopologicalSpace M]
    (P : EquivariantContinuousActionPackage G M) (E : EquivariantContinuousActionEvidence P) :
    EquivariantContinuousActionClosed P := by
  exact And.intro E.continuousActionClosed (And.intro E.actionGroupHomClosed E.faithfulActionClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
