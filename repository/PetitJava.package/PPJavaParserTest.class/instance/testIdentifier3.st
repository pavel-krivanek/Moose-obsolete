testing-literals
testIdentifier3
	super testIdentifier3.
	self assert: result class equals: PJIdentifierNode.
	self assert: result name equals: 'αρετη'
	