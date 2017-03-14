testing-literals
testIdentifier5
	super testIdentifier5.
	self assert: result class equals: PJIdentifierNode.
	self assert: result name equals: 'isLetterOrDigit'