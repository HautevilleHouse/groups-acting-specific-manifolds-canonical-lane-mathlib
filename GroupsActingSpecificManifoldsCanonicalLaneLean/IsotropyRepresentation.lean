import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsActingSpecificManifoldsCanonicalLaneLean

structure IsotropyRepresentationStructure (M : Type) [TopologicalSpace M] (x : M) where
  isotropySubgroup : Subgroup (Homeo M)
  isotropyAction : isotropySubgroup → TangentSpace M x → TangentSpace M x
  linearRepresentation : LinearRepresentation ℝ isotropySubgroup (TangentSpace M x)

structure IsotropyRepresentationEvidence (I : IsotropyRepresentationStructure M x) where
  linearRepresentationClosed : I.linearRepresentation

def IsotropyRepresentationClosed (I : IsotropyRepresentationStructure M x) : Prop :=
  I.linearRepresentation

theorem isotropy_representation_closed_from_evidence (I : IsotropyRepresentationStructure M x) (E : IsotropyRepresentationEvidence I) : IsotropyRepresentationClosed I :=
  E.linearRepresentationClosed

end GroupsActingSpecificManifoldsCanonicalLaneLean
end HautevilleHouse