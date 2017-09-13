accessing
formalGates
	"Specifies the gates that form the message interface between this Interaction and any InteractionUses which reference it."
	^ formalGates ifNil: [ formalGates := OrderedCollection new ]