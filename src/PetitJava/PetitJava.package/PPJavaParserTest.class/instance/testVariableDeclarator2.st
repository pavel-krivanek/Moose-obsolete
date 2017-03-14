testing-literals
testVariableDeclarator2
	super testVariableDeclarator2.
	self assert: result class equals: PJVariableDeclaratorNode.
	self assert: result variable class equals: PJIdentifierNode.
	self assert: result arrayLevel equals: 2.
	self assert: result initializer isNil