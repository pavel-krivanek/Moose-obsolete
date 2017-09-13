accessing
manifestations
	"The set of model elements that are manifested in the Artifact. That is, these model elements are utilized in the construction (or generation) of the artifact."
	^ manifestations ifNil: [ manifestations := OrderedCollection new ]