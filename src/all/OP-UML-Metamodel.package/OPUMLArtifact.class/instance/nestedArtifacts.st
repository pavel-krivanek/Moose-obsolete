accessing
nestedArtifacts
	"The Artifacts that are defined (nested) within the Artifact. The association is a specialization of the ownedMember association from Namespace to NamedElement."
	^ nestedArtifacts ifNil: [ nestedArtifacts := OrderedCollection new ]