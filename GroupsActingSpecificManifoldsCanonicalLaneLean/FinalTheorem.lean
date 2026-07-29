import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GroupsActingSpecificManifoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

def ConstrainedGroupActionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_action_endgame (A : AdmissibleClass) :
    ConstrainedGroupActionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse
