tests
testBasic
	n foo.
	n bar.
	self assert: n numberOfReceivedMessages equals: 2.
	
	n resetMessages.
	self assert: n numberOfReceivedMessages equals: 0.