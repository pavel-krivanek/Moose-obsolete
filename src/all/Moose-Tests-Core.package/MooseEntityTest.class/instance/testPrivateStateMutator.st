tests
testPrivateStateMutator

	| entity state mooseState |
	entity := MooseEntity new.
	state := entity privateState.
	self assert: state notNil.
	
	mooseState := MooseMemoryEfficientState new.
	entity privateState: mooseState.
	self assert: (entity privateState == mooseState).
