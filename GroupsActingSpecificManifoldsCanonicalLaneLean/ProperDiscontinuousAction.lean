import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.GroupActionBasic

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure ProperDiscontinuousActionPackage (M : Type) (G : GroupActionPackage M) where
  properlyDiscontinuous : Prop
  cocompactness : Prop
  finiteStabilizers : Prop
  manifoldQuotientHausdorff : Prop
  fundamentalDomainExists : Prop

structure ProperDiscontinuousEvidence (M : Type) (G : GroupActionPackage M)
    (P : ProperDiscontinuousActionPackage M G) where
  properlyDiscontinuousClosed : P.properlyDiscontinuous
  cocompactnessClosed : P.cocompactness
  finiteStabilizersClosed : P.finiteStabilizers
  manifoldQuotientHausdorffClosed : P.manifoldQuotientHausdorff
  fundamentalDomainExistsClosed : P.fundamentalDomainExists

def ProperDiscontinuousActionClosed (M : Type) (G : GroupActionPackage M)
    (P : ProperDiscontinuousActionPackage M G) : Prop :=
  P.properlyDiscontinuous ∧ P.cocompactness ∧
  P.finiteStabilizers ∧ P.manifoldQuotientHausdorff ∧ P.fundamentalDomainExists

theorem proper_discontinuous_action_closed_from_evidence
    (M : Type) (G : GroupActionPackage M) (P : ProperDiscontinuousActionPackage M G)
    (E : ProperDiscontinuousEvidence M G P) : ProperDiscontinuousActionClosed M G P := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.cocompactnessClosed
      (And.intro E.finiteStabilizersClosed
        (And.intro E.manifoldQuotientHausdorffClosed E.fundamentalDomainExistsClosed)))

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse