testing-copy
testCopyMatchLiteral
	| old new |
	old := $a asParser.
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).