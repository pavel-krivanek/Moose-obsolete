parsing
matches: anObject
	"Answer if anObject can be parsed by the receiver."
	
	^ (self parse: anObject) isPetitFailure not