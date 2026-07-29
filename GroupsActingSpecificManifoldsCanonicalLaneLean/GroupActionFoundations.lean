import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure GroupActionPackage (G : Type) (M : Type) where
  action : G → M → M
  identityAction : ∀ (x : M), action 1 x = x
  compatibility : ∀ (g h : G) (x : M), action (g * h) x = action g (action h x)
  continuousAction : Prop
  smoothAction : Prop

structure OrbitSpace (M : Type) where
  quotient : Type
  projection : M → quotient

structure IsometricAction (G : Type) (M : Type) [MetricSpace M] (act : G → M → M) where
  isIsometry : ∀ g, Isometry (act g)

structure ProperAction (G : Type) (M : Type) [TopologicalSpace G] [TopologicalSpace M]
    [Group G] [TopologicalGroup G] (act : G → M → M) where
  continuousAction : Continuous (fun p : G × M => act p.1 p.2)
  proper : ∀ (K : Set M), IsCompact K → IsCompact {p : G × M | act p.1 p.2 ∈ K}

structure CohomogeneityOneAction (G : Type) (M : Type) [TopologicalSpace G] [TopologicalSpace M]
    [Group G] [TopologicalGroup G] (act : G → M → M) where
  properAction : ProperAction G M act
  principalOrbitCodimOne : Prop
  singularOrbitsClassified : Prop

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse