tests
testMooseInterestingEntity
	| storage state |
	model := MooseModel new.
	state := model privateState.
	storage := model entityStorage.
	
	model mooseInterestingEntity.

	self assert: model privateState == state.
	self assert: model entityStorage == storage.

