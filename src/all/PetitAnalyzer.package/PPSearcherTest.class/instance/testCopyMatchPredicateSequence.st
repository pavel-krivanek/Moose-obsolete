testing-copy
testCopyMatchPredicateSequence
	| old new |
	old := 'foo' asParser caseInsensitive.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).