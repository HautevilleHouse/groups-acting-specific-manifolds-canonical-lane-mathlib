import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure ActionOnThreeManifold (G : Type) (M : Type) where
  groupType : Type
  manifoldType : Type
  action : G → M → M
  smoothThreeManifold : Prop
  closedThreeManifold : Prop
  simplyConnected : Prop
  actionByDiffeo : Prop
  effectiveAction : Prop

structure GeometricStructurePreserved (G : Type) (M : Type) where
  riemannianMetric : Type
  isometryAction : Prop
  homogeneousSpace : Prop

structure SeifertFiberedAction (G : Type) (M : Type) where
  seifertFibration : Prop
  orbitStructure : Prop
  exceptionalOrbitsClassified : Prop
  baseOrbifold : Type

structure HyperbolicAction (G : Type) (M : Type) where
  hyperbolicMetric : Type
  isometryActionHyperbolic : Prop
  discreteCocompact : Prop
  finiteVolume : Prop

structure SphericalAction (G : Type) (M : Type) where
  sphericalMetric : Type
  isometryActionSpherical : Prop
  finiteGroup : Prop

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse