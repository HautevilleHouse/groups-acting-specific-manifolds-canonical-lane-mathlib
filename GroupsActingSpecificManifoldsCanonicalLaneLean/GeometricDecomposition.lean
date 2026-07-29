import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure DecompositionUnderAction (G : Type) (M : Type) where
  invariantDecomposition : Prop
  actionOnEachComponent : Prop
  productStructure : Prop

structure EquivariantGeometrization (G : Type) (M : Type) where
  pieces : Type
  geometricStructure : Type
  actionPreservesPieces : Prop
  geometrizationTheoremApplied : Prop

structure CanonicalDecomposition (G : Type) (M : Type) where
  jacobiDecomposition : Prop
  primeDecomposition : Prop
  torusDecomposition : Prop
  actionRespectsDecomposition : Prop

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse