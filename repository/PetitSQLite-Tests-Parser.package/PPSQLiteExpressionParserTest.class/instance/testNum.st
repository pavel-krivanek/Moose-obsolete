testing
testNum
	self assert: '0' is: 0.
	self assert: '0.0' is: 0.0.
	self assert: '1' is: 1.
	self assert: '1.2' is: 1.2.
	self assert: '34' is: 34.
	self assert: '56.78' is: 56.78.
	self assert: '-9' is: -9.
	self assert: '-9.9' is: -9.9