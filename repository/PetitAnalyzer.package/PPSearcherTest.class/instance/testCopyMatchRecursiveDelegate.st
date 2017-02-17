testing-copy
testCopyMatchRecursiveDelegate
	| old new |
	old := PPDelegateParser new.
	old setParser: old.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).