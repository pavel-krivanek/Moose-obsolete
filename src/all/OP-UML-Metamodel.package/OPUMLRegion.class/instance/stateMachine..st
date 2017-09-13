accessing
stateMachine: aStateMachine
	"The StateMachine that owns the Region. If a Region is owned by a StateMachine, then it cannot also be owned by a State."
	stateMachine := OPUMLToOneLink
		on: self identity
		update: #regions
		from: stateMachine
		to: aStateMachine