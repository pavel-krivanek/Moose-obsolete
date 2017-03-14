testing-literals-integer
testIfStatement5
	super testIfStatement5.
	self assert: result class equals: PJIfStatementNode.
	self assert: result condition class equals: PJInfixOperationNode. 
	self assert: result thenPart class equals: PJBlockNode.
	self assert: result elsePart isNil