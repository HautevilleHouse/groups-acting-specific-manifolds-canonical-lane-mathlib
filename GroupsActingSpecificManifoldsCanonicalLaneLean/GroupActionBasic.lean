import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure GroupActionPackage (M : Type) where
  group : Type
  groupMultiplication : group → group → group
  groupIdentity : group
  groupInverse : group → group
  groupAxioms : Prop
  action : group → M → M
  actionCompat : Prop
  actionContinuous : Prop
  actionSmooth : Prop

structure GroupActionEvidence (M : Type) (G : GroupActionPackage M) where
  groupAxiomsClosed : G.groupAxioms
  actionCompatClosed : G.actionCompat
  actionContinuousClosed : G.actionContinuous
  actionSmoothClosed : G.actionSmooth

def GroupActionClosed (M : Type) (G : GroupActionPackage M) : Prop :=
  G.groupAxioms ∧ G.actionCompat ∧ G.actionContinuous ∧ G.actionSmooth

theorem group_action_closed_from_evidence (M : Type) (G : GroupActionPackage M)
    (E : GroupActionEvidence M G) : GroupActionClosed M G := by
  exact And.intro E.groupAxiomsClosed
    (And.intro E.actionCompatClosed
      (And.intro E.actionContinuousClosed E.actionSmoothClosed))

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse