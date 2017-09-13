accessing
inputValues
	"The InputPins providing inputs to the OpaqueAction."
	^ inputValues ifNil: [ inputValues := OrderedCollection new ]