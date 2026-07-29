import canonicalLaneMathlib.AdmissibleClass
import GroupsActingSpecificManifoldsCanonicalLaneLean.GroupActionObject

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure ProperDiscontinuity (G : GroupActionObject) where
  properAction : Prop
  properlyDiscontinuous : Prop
  finiteStabilizers : Prop
  properActionClosed : properAction
  properlyDiscontinuousClosed : properlyDiscontinuous
  finiteStabilizersClosed : finiteStabilizers

def ProperDiscontinuityClosed (G : GroupActionObject) (P : ProperDiscontinuity G) : Prop :=
  P.properAction ∧ P.properlyDiscontinuous ∧ P.finiteStabilizers

theorem proper_discontinuity_closed_from_evidence (G : GroupActionObject) (P : ProperDiscontinuity G) :
    ProperDiscontinuityClosed G P := by
  exact And.intro P.properActionClosed (And.intro P.properlyDiscontinuousClosed P.finiteStabilizersClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse