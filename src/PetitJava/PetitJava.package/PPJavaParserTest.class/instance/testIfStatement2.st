testing-literals-integer
testIfStatement2
	super testIfStatement2.
	self assert: result class equals: PJIfStatementNode.
	self assert: result condition class equals: PJBooleanLiteralNode. 
	self assert: result thenPart class equals: PJBlockNode.
	self assert: result elsePart class equals: PJBlockNode.