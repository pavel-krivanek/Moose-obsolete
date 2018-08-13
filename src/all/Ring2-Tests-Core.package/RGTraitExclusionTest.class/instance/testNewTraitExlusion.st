tests
testNewTraitExlusion

	| traitExclusion | 
	traitExclusion  := RGTraitExclusion unnamed.
	self assert: (traitExclusion isRingResolved).
	self assert: (traitExclusion hasUnresolvedAll: #(name subject exclusions)).
	self assert: (traitExclusion isTraitTransformation).
	