accessing
bodyOutputs
	"The OutputPins on Actions within the body section whose values are moved to the result OutputPins of the containing ConditionalNode after execution of the body."
	^ bodyOutputs ifNil: [ bodyOutputs := OrderedCollection new ]