testing-literals-integer
testIfStatement3
	super testIfStatement3.
	self assert: result class equals: PJIfStatementNode.
	self assert: result condition class equals: PJBooleanLiteralNode. 
	self assert: result thenPart class equals: PJBlockNode.
	self assert: result elsePart class equals: PJBlockNode.