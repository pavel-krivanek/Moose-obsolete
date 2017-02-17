testing-literals-integer
testIfStatement4
	super testIfStatement4.
	self assert: result class equals: PJIfStatementNode.
	self assert: result condition class equals: PJBooleanLiteralNode. 
	self assert: result thenPart class equals: PJExpressionStatementNode.
	self assert: result elsePart isNil