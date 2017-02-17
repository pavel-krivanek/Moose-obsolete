testing-literals
testIdentifier1
	super testIdentifier1.
	self assert: result class equals: PJIdentifierNode.
	self assert: result name equals: 'String'
	