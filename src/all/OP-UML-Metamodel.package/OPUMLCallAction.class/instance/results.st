accessing
results
	"The OutputPins on which the reply values from the invocation are placed (if the call is synchronous)."
	^ results ifNil: [ results := OrderedCollection new ]