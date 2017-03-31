grammar-classes-method
localVariableDeclaration
	^ super localVariableDeclaration ==> [ :nodes | 
			| declarationNode |
			declarationNode := PJLocalVariableDeclarationStatementNode new.
			declarationNode
				type: nodes second;
				declarators: (nodes third second collect: [:each | each second]) asOrderedCollection.
			declarationNode declarators addFirst: nodes third first.
			declarationNode]