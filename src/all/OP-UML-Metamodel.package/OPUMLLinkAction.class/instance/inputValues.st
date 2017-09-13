accessing
inputValues
	"InputPins used by the LinkEndData of the LinkAction."
	^ inputValues ifNil: [ inputValues := OrderedCollection new ]