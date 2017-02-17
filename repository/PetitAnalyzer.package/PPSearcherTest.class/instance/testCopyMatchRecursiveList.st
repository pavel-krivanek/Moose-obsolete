testing-copy
testCopyMatchRecursiveList
	| old new |
	old := PPChoiceParser new.
	old setParsers: (Array with: old).
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).