grammar-classes-method
variableDeclarator
	^ super variableDeclarator
		==> [ :nodes | 
			| declarator |
			declarator := PJVariableDeclaratorNode new.
			declarator
				variable: nodes first;
				arrayLevel: nodes second size.
			nodes third
				ifNotNil: [ :node | declarator initializer: node second ].
			declarator ]