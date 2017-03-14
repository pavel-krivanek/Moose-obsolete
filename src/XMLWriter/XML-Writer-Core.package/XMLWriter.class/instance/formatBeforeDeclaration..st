formatting
formatBeforeDeclaration: aDeclarationWriter
	formatter
		ifNotNil: [formatter formatBeforeDeclaration: aDeclarationWriter]