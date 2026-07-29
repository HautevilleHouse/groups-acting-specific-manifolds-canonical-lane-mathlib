import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.ProperDiscontinuousAction

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure ManifoldQuotientPackage (M : Type) (G : GroupActionPackage M)
    (P : ProperDiscontinuousActionPackage M G) where
  quotientSpace : Type
  quotientTopology : TopologicalSpace quotientSpace
  quotientManifold : Prop
  coveringMap : quotientSpace → M
  coveringMapLocalHomeo : Prop
  fundamentalGroupRelation : Prop

structure ManifoldQuotientEvidence (M : Type) (G : GroupActionPackage M)
    (P : ProperDiscontinuousActionPackage M G) (Q : ManifoldQuotientPackage M G P) where
  quotientManifoldClosed : Q.quotientManifold
  coveringMapLocalHomeoClosed : Q.coveringMapLocalHomeo
  fundamentalGroupRelationClosed : Q.fundamentalGroupRelation

def ManifoldQuotientClosed (M : Type) (G : GroupActionPackage M)
    (P : ProperDiscontinuousActionPackage M G) (Q : ManifoldQuotientPackage M G P) : Prop :=
  Q.quotientManifold ∧ Q.coveringMapLocalHomeo ∧ Q.fundamentalGroupRelation

theorem manifold_quotient_closed_from_evidence (M : Type) (G : GroupActionPackage M)
    (P : ProperDiscontinuousActionPackage M G) (Q : ManifoldQuotientPackage M G P)
    (E : ManifoldQuotientEvidence M G P Q) : ManifoldQuotientClosed M G P Q := by
  exact And.intro E.quotientManifoldClosed
    (And.intro E.coveringMapLocalHomeoClosed E.fundamentalGroupRelationClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse