import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure GroupActionObject where
  groupType : Type
  manifold : Type
  action : groupType → manifold → manifold
  faithful : Prop
  transitive : Prop
  conclusion : faithful ∧ transitive

def GroupActionWitnessClosed (O : GroupActionObject) : Prop :=
  O.faithful ∧ O.transitive

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse