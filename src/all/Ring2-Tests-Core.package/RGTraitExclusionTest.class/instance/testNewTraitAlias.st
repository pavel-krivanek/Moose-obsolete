tests
testNewTraitAlias

	| traitAlias | 
	traitAlias  := RGTraitAlias unnamed.
	self assert: (traitAlias isRingResolved).
	self assert: (traitAlias hasUnresolvedAll: #(name subject aliases)).
	self assert: (traitAlias isTraitTransformation).
	