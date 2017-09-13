accessing
kind
	"Determines the precise type of the Pseudostate and can be one of: entryPoint, exitPoint, initial, deepHistory, shallowHistory, join, fork, junction, terminate or choice."
	^ kind ifNil: [ kind := OPUMLPseudostateKind new initial ]