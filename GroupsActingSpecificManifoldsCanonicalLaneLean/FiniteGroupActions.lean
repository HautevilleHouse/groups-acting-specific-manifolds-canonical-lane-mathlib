import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure FiniteGroupAction (G : Type) [Fintype G] (M : Type) where
  action : G → M → M
  continuousAction : Prop
  orientationPreserving : Prop
  fixedPointSet : Set M
  fixedPointSetIsSubmanifold : Prop
  isotropySubgroups : G → Set M

structure SmithTheory (G : Type) [Fintype G] [Group G] (M : Type) where
  primeOrderElement : G → Prop
  modPCohomology : Type
  fixedPointCohomology : Type
  spectralSequence : Type

structure NielsenRealization (G : Type) [Fintype G] (M : Type) where
  actionByHomeo : (g : G) → Homeomorph M M
  smoothRealization : Prop

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse