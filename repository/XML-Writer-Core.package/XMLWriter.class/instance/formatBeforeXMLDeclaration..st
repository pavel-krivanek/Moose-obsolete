formatting
formatBeforeXMLDeclaration: anXMLDeclarationWriter
	formatter
		ifNotNil: [formatter formatBeforeXMLDeclaration: anXMLDeclarationWriter]