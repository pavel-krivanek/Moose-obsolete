testing
testFiles
	| dups multis |
	multis := model allMultiplications.
	self assert: multis size equals: 1.
	dups := (multis at: 1) duplications.
	self assert: dups notNil.
	self assert: dups size equals: 1