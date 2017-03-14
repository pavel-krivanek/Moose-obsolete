testing-literals
testVariableDeclarator3
	super testVariableDeclarator3.
	self assert: result class equals: PJVariableDeclaratorNode.
	self assert: result variable class equals: PJIdentifierNode.
	self assert: result arrayLevel equals: 0.
	self assert: result initializer notNil