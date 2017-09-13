accessing
stateMachine: aStateMachine
	"The StateMachine in which this Pseudostate is defined. This only applies to Pseudostates of the kind entryPoint or exitPoint."
	stateMachine := OPUMLToOneLink
		on: self identity
		update: #connectionPoints
		from: stateMachine
		to: aStateMachine