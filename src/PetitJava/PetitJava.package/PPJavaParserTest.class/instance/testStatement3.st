testing
testStatement3 
	super testStatement3.
	self assert: result class equals: PJBlockNode.
	self assert: result statements isEmpty