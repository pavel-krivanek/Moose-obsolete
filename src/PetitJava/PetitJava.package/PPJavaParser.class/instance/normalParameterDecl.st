grammar-classes-method
normalParameterDecl  

	^ super normalParameterDecl ==> [:nodes |
		| declarator |
		
		declarator := PJParameterDeclaratorNode new.
		declarator
			modifiers: nodes first;
			type: nodes second;
			identifier: nodes third;
			arrayLevel: nodes fourth size.
		declarator]