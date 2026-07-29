import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure EquivariantMap (G : Type) (M N : Type) (actM : G → M → M) (actN : G → N → N) where
  map : M → N
  equivariant : ∀ (g : G) (x : M), map (actM g x) = actN g (map x)

structure EquivariantHomotopy (G : Type) (M N : Type) (actM : G → M → M) (actN : G → N → N) where
  homotopy : M × [0,1] → N
  equivariantStep : ∀ (t : ℝ) (g : G) (x : M), homotopy (actM g x, t) = actN g (homotopy (x, t))

structure EquivariantCohomology (G : Type) (M : Type) where
  cohomologyGroups : Type
  grading : ℕ → Type
  functoriality : Prop
  excision : Prop

structure EquivariantCharacteristicClass (G : Type) (M : Type) where
  characteristicClass : Type
  pullback : (N → M) → Type
  naturality : Prop

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse