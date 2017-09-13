accessing
loopVariables
	"A list of OutputPins that hold the values of the loop variables during an execution of the loop. When the test fails, the values are moved to the result OutputPins of the loop."
	^ loopVariables ifNil: [ loopVariables := OrderedCollection new ]