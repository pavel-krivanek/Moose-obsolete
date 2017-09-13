accessing
realizingConnectors
	"Determines which Connectors will realize the specified flow."
	^ realizingConnectors ifNil: [ realizingConnectors := OrderedCollection new ]