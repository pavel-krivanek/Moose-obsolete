accessing
outputValues
	"The OutputPins on which the OpaqueAction provides outputs."
	^ outputValues ifNil: [ outputValues := OrderedCollection new ]