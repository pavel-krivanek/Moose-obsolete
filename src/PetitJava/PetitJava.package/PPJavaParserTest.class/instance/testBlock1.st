testing
testBlock1
	super testBlock1.
	self assert: result class equals: PJBlockNode.
	self assert: result statements isEmpty