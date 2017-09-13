accessing
ownedAttributes
	"The Properties owned by the StructuredClassifier."
	^ ownedAttributes ifNil: [ ownedAttributes := OrderedCollection new ]