accessing
results
	"A list of OutputPins that receive the loopVariable values after the last iteration of the loop and constitute the output of the LoopNode."
	^ results ifNil: [ results := OrderedCollection new ]