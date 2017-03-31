tests
testByName
	self assert: (REPStakeholder named: 'a') == (REPStakeholder named: 'a').
	self assert: (REPStakeholder named: 'a') name = 'a'