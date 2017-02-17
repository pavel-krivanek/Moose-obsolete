testing-copy
testCopyMatchDelegate
	| old new |
	old := $a asParser token trim.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).