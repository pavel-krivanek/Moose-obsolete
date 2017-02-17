testing-copy
testCopyMatchRepetitionMinMax
	| old new |
	old := #word asParser min: 5 max: 10.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).