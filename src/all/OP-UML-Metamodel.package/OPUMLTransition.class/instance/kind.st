accessing
kind
	"Indicates the precise type of the Transition."
	^ kind ifNil: [ kind := OPUMLTransitionKind new external ]