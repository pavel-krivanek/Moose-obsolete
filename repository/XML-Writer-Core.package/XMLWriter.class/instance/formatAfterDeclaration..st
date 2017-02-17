formatting
formatAfterDeclaration: aDeclarationWriter
	formatter
		ifNotNil: [formatter formatAfterDeclaration: aDeclarationWriter]