import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure GroupActionPackage where
  groupType : Type
  manifoldType : Type
  manifoldTopology : TopologicalSpace manifoldType
  action : groupType → manifoldType → manifoldType
  actionContinuous : Prop
  actionSmooth : Prop
  properlyDiscontinuous : Prop
  cocompact : Prop

structure GroupActionEvidence (G : GroupActionPackage) where
  actionContinuousClosed : G.actionContinuous
  actionSmoothClosed : G.actionSmooth
  properlyDiscontinuousClosed : G.properlyDiscontinuous
  cocompactClosed : G.cocompact

def GroupActionClosed (G : GroupActionPackage) : Prop :=
  G.actionContinuous ∧ G.actionSmooth ∧ G.properlyDiscontinuous ∧ G.cocompact

theorem group_action_closed_from_evidence (G : GroupActionPackage) (E : GroupActionEvidence G) :
    GroupActionClosed G := by
  exact And.intro E.actionContinuousClosed
    (And.intro E.actionSmoothClosed
      (And.intro E.properlyDiscontinuousClosed E.cocompactClosed))

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
