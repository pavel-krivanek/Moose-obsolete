testing-literals
testIdentifier4
	super testIdentifier4.
	self assert: result class equals: PJIdentifierNode.
	self assert: result name equals: 'MAX_VALUE'
	