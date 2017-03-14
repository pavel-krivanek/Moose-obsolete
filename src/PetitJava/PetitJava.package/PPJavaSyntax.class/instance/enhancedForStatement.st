grammar-statements
enhancedForStatement

	^ (self tokenFor: 'for') , 
	(self tokenFor: '(') , 
		variableModifiers , 
		type , 
		identifier , 
		(self tokenFor: ':'),
		expression,
	(self tokenFor: ')'),
	statement