import canonicalLaneMathlib.AdmissibleClass
import GroupsActingSpecificManifoldsCanonicalLaneLean.GroupActionObject

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure EquivariantStructure (G : GroupActionObject) where
  equivariantMap : G.manifold → G.manifold
  commutesWithAction : ∀ (g : G.groupType) (x : G.manifold), equivariantMap (G.action g x) = G.action g (equivariantMap x)
  isHomeomorphism : Prop
  isSmooth : Prop
  commutesClosed : commutesWithAction
  homeomorphismClosed : isHomeomorphism
  smoothClosed : isSmooth

def EquivariantStructureClosed (G : GroupActionObject) (E : EquivariantStructure G) : Prop :=
  E.commutesWithAction ∧ E.isHomeomorphism ∧ E.isSmooth

theorem equivariant_structure_closed_from_evidence (G : GroupActionObject) (E : EquivariantStructure G) :
    EquivariantStructureClosed G E := by
  exact And.intro E.commutesClosed (And.intro E.homeomorphismClosed E.smoothClosed)

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse