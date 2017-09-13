accessing
inputs
	"The ordered set of InputPins representing the inputs to the Action."
	^ inputs ifNil: [ inputs := OrderedCollection new ]