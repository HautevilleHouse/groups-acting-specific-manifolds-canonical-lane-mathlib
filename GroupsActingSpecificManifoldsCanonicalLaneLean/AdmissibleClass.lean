import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : GroupActionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupActionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse