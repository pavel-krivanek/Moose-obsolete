formatting
formatAfterXMLDeclaration: anXMLDeclarationWriter
	formatter
		ifNotNil: [formatter formatAfterXMLDeclaration: anXMLDeclarationWriter]