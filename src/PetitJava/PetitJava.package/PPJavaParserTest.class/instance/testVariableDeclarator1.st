testing-literals
testVariableDeclarator1
	super testVariableDeclarator1.
	self assert: result class equals: PJVariableDeclaratorNode.
	self assert: result variable class equals: PJIdentifierNode.
	self assert: result arrayLevel equals: 0.
	self assert: result initializer isNil