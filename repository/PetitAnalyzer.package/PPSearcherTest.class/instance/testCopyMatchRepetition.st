testing-copy
testCopyMatchRepetition
	| old new |
	old := #word asParser star.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).