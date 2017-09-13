accessing
loopVariableInputs
	"A list of InputPins whose values are moved into the loopVariable Pins before the first iteration of the loop."
	^ loopVariableInputs ifNil: [ loopVariableInputs := OrderedCollection new ]