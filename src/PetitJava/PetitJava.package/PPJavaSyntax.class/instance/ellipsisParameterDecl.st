grammar-classes
ellipsisParameterDecl

	^ variableModifiers ,
	type ,
	('...' asPParser token trim) ,
	identifier