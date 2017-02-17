initialization
on: aStringOrStream
	super on: aStringOrStream.

	contentHandler := self defaultContentHandlerClass parser: self.
	lexicalHandler := self defaultLexicalHandlerClass parser: self.
	declarationHandler := self defaultDeclarationHandlerClass parser: self.
	
	"self is the returns parsing result SAXHandler returns"
	parsingResult := self.