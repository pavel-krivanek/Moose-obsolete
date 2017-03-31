testing
testPrefixNegate
	self assert: '1' is: 1.
	self assert: '-1' is: -1.
	self assert: '--1' is: 1.
	self assert: '---1' is: -1