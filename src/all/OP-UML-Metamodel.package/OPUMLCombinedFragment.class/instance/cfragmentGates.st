accessing
cfragmentGates
	"Specifies the gates that form the interface between this CombinedFragment and its surroundings"
	^ cfragmentGates ifNil: [ cfragmentGates := OrderedCollection new ]