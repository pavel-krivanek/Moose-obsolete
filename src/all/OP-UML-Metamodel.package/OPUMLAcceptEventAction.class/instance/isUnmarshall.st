accessing
isUnmarshall
	"Indicates whether there is a single OutputPin for a SignalEvent occurrence, or multiple OutputPins for attribute values of the instance of the Signal associated with a SignalEvent occurrence."
	^ isUnmarshall ifNil: [ isUnmarshall := false ]