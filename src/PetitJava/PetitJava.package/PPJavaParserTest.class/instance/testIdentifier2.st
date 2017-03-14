testing-literals
testIdentifier2
	super testIdentifier2.
	self assert: result class equals: PJIdentifierNode.
	self assert: result name equals: 'i3'
	