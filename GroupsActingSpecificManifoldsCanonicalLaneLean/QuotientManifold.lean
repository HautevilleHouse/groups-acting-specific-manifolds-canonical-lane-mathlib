import canonicalLaneMathlib.AdmissibleClass
import GroupsActingSpecificManifoldsCanonicalLaneLean.OrbitClassification
import GroupsActingSpecificManifoldsCanonicalLaneLean.ProperDiscontinuity

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure QuotientManifold (G : GroupActionObject) (O : OrbitClassification G) (P : ProperDiscontinuity G) where
  quotientSpace : Type
  quotientTopology : TopologicalSpace quotientSpace
  quotientSmoothStructure : Prop
  projectionSmooth : Prop
  quotientSpaceDefined : quotientSpace = O.orbitSpace
  quotientTopologyCompatible : quotientTopology = O.orbitSpaceTopology
  quotientSmoothClosed : quotientSmoothStructure
  projectionSmoothClosed : projectionSmooth

def QuotientManifoldClosed (G : GroupActionObject) (O : OrbitClassification G) (P : ProperDiscontinuity G) (Q : QuotientManifold G O P) : Prop :=
  Q.quotientSmoothStructure ∧ Q.projectionSmooth

theorem quotient_manifold_closed_from_evidence (G : GroupActionObject) (O : OrbitClassification G) (P : ProperDiscontinuity G) (Q : QuotientManifold G O P) :
    QuotientManifoldClosed G O P Q := by
  exact And.intro Q.quotientSmoothClosed Q.projectionSmoothClosed

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse