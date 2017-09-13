accessing
arguments
	"The InputPins that provide the argument values passed in the invocation request."
	^ arguments ifNil: [ arguments := OrderedCollection new ]