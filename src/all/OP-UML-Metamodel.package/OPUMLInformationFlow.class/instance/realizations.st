accessing
realizations
	"Determines which Relationship will realize the specified flow."
	^ realizations ifNil: [ realizations := OrderedCollection new ]