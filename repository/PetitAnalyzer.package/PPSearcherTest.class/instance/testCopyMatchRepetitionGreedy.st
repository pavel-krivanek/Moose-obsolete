testing-copy
testCopyMatchRepetitionGreedy
	| old new |
	old := #word asParser starGreedy: #digit asParser.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).