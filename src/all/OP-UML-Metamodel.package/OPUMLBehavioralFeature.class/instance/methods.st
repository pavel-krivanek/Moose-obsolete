accessing
methods
	"A Behavior that implements the BehavioralFeature. There may be at most one Behavior for a particular pairing of a Classifier (as owner of the Behavior) and a BehavioralFeature (as specification of the Behavior)."
	^ methods ifNil: [ methods := OPUMLToManyLinks on: self identity opposite: #specification: ]