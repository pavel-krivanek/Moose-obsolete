accessing
submachine: aStateMachine
	"The StateMachine that is to be inserted in place of the (submachine) State."
	submachine := OPUMLToOneLink
		on: self identity
		update: #submachineStates
		from: submachine
		to: aStateMachine