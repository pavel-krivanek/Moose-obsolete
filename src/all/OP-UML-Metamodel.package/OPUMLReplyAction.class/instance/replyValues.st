accessing
replyValues
	"A list of InputPins providing the values for the output (inout, out, and return) Parameters of the Operation. These values are returned to the caller."
	^ replyValues ifNil: [ replyValues := OrderedCollection new ]