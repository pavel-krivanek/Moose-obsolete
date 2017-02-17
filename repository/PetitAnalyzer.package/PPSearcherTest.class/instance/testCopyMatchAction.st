testing-copy
testCopyMatchAction
	| old new |
	old := $a asParser ==> [ :token | $b ].
	new := old copyInContext: Dictionary new.
	self assert: (old match: old inContext: Dictionary new).
	self assert: (old match: new inContext: Dictionary new).
	self deny: (old == new).