tests
testGroup
	| group |
	group := (REPStakeholder named: 'a'), (REPStakeholder named: 'b').
	self assert: group asString = 'a, b'