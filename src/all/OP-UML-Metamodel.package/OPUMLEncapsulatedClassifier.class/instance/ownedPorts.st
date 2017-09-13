accessing
ownedPorts
	"The Ports owned by the EncapsulatedClassifier."
	^ ownedPorts ifNil: [ ownedPorts := OrderedCollection new ]