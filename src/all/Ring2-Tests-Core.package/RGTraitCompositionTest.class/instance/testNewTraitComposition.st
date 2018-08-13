tests
testNewTraitComposition

	| traitComposition | 
	traitComposition  := RGTraitComposition unnamed.
	self assert: (traitComposition isRingResolved).
	self assert: (traitComposition hasUnresolvedAll: #(name transformations)).
	self assert: (traitComposition isTraitComposition).
	