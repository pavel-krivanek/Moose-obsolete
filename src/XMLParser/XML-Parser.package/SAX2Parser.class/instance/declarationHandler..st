accessing
declarationHandler: aDeclarationHandler
	(declarationHandler :=
		aDeclarationHandler ifNil: [self defaultDeclarationHandlerClass new])
			parser: self