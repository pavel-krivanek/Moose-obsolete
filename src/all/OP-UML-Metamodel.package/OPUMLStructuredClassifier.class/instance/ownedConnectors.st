accessing
ownedConnectors
	"The connectors owned by the StructuredClassifier."
	^ ownedConnectors ifNil: [ ownedConnectors := OrderedCollection new ]