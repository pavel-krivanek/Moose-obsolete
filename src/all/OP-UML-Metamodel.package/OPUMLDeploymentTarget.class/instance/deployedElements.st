accessing
deployedElements
	"The set of elements that are manifested in an Artifact that is involved in Deployment to a DeploymentTarget."
	^ deployedElements ifNil: [ deployedElements := OrderedCollection new ]