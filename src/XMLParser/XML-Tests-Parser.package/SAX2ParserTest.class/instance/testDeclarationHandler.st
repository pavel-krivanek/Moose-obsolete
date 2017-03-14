tests
testDeclarationHandler
	| parser oldDeclarationHandler newDeclarationHandler |

	parser := SAX2Parser on: self addressBookXML.
	oldDeclarationHandler := parser declarationHandler.
	self
		assert: oldDeclarationHandler class == self declarationHandlerClass;
		assert: oldDeclarationHandler parser == parser.

	newDeclarationHandler := self declarationHandlerClass new.
	self
		assert: (parser declarationHandler: newDeclarationHandler) == parser;
		assert: parser declarationHandler == newDeclarationHandler;
		assert: newDeclarationHandler parser == parser;
		assert: (parser declarationHandler: nil) == parser;
		assert: parser declarationHandler class == self declarationHandlerClass;
		assert: parser declarationHandler parser == parser.