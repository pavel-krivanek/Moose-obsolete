accessing
outputs
	"The ordered set of OutputPins representing outputs from the Action."
	^ outputs ifNil: [ outputs := OrderedCollection new ]