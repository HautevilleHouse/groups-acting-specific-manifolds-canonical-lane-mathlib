import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure HomogeneousSpaceStructure (G : Type) [TopologicalSpace G] (H : Subgroup G) where
  cosetSpace : Type
  cosetTopology : TopologicalSpace cosetSpace
  canonicalSurjection : G → cosetSpace
  continuousSurjection : Continuous canonicalSurjection
  openMap : OpenMap canonicalSurjection

structure HomogeneousSpaceEvidence (HS : HomogeneousSpaceStructure G H) where
  continuousSurjectionClosed : HS.continuousSurjection
  openMapClosed : HS.openMap

def HomogeneousSpaceClosed (HS : HomogeneousSpaceStructure G H) : Prop :=
  HS.continuousSurjection ∧ HS.openMap

theorem homogeneous_space_closed_from_evidence (HS : HomogeneousSpaceStructure G H) (E : HomogeneousSpaceEvidence HS) : HomogeneousSpaceClosed HS :=
  And.intro E.continuousSurjectionClosed E.openMapClosed

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse