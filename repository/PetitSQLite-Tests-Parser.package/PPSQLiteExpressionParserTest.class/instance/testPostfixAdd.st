testing
testPostfixAdd
	self assert: '0++' is: 1.
	self assert: '0++++' is: 2.
	self assert: '0++++++' is: 3.

	self assert: '0+++1' is: 2.
	self assert: '0+++++1' is: 3.
	self assert: '0+++++++1' is: 4