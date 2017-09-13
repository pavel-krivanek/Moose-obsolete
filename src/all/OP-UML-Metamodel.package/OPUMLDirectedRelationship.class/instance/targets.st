accessing
targets
	"Specifies the target Element(s) of the DirectedRelationship."
	^ targets ifNil: [ targets := OrderedCollection new ]