accessing
inStates
	"The States required to be associated with the values held by tokens on this ObjectNode."
	^ inStates ifNil: [ inStates := OrderedCollection new ]