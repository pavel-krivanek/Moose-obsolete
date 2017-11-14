initialization
on: aStringOrStream
	super on: aStringOrStream.

	contentHandler := self defaultContentHandlerClass parser: self.
	lexicalHandler := self defaultLexicalHandlerClass parser: self.
	declarationHandler := self defaultDeclarationHandlerClass parser: self.
	parsingResult := self defaultParsingResult.