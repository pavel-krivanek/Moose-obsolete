testing-literals-integer
testIfStatement1
	super testIfStatement1.
	self assert: result class equals: PJIfStatementNode.
	self assert: result condition class equals: PJBooleanLiteralNode. 
	self assert: result thenPart class equals: PJBlockNode.
	self assert: result elsePart isNil