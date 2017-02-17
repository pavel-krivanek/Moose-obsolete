testing
testBlock2
	super testBlock2.
	self assert: result class equals: PJBlockNode.
	self assert: result statements size equals: 2