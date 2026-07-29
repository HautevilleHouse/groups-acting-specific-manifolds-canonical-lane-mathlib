import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure GroupActionStructure (M : Type) [TopologicalSpace M] where
  group : Type u
  groupMul : group → group → group
  groupInv : group → group
  groupOne : group
  groupLaw : Group group groupMul groupInv groupOne
  action : group → M → M
  continuousAction : Continuous (λ (g : group) (x : M) => action g x)
  faithful : ∀ (g : group), (∀ (x : M), action g x = x) → g = groupOne

structure GroupActionEvidence (G : GroupActionStructure M) where
  groupLawClosed : G.groupLaw
  continuousActionClosed : G.continuousAction
  faithfulClosed : G.faithful

def GroupActionClosed (G : GroupActionStructure M) : Prop :=
  G.groupLaw ∧ G.continuousAction ∧ G.faithful

theorem group_action_closed_from_evidence (G : GroupActionStructure M) (E : GroupActionEvidence G) : GroupActionClosed G :=
  And.intro E.groupLawClosed (And.intro E.continuousActionClosed E.faithfulClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse