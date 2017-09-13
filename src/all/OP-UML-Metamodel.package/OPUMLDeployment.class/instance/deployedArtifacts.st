accessing
deployedArtifacts
	"The Artifacts that are deployed onto a Node. This association specializes the supplier association."
	^ deployedArtifacts ifNil: [ deployedArtifacts := OrderedCollection new ]