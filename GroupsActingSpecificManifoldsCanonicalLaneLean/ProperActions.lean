import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure ProperActionStructure (G : Type) [TopologicalSpace G] (M : Type) [TopologicalSpace M] where
  action : G → M → M
  continuousAction : Continuous (λ (gp : G × M) => action gp.1 gp.2)
  proper : ProperMap (λ (gp : G × M) => (action gp.1 gp.2, gp.2))

structure ProperActionEvidence (P : ProperActionStructure G M) where
  continuousActionClosed : P.continuousAction
  properClosed : P.proper

def ProperActionClosed (P : ProperActionStructure G M) : Prop :=
  P.continuousAction ∧ P.proper

theorem proper_action_closed_from_evidence (P : ProperActionStructure G M) (E : ProperActionEvidence P) : ProperActionClosed P :=
  And.intro E.continuousActionClosed E.properClosed

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse