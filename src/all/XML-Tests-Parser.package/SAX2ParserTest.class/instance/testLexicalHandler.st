tests
testLexicalHandler
	| parser oldLexicalHandler newLexicalHandler |

	parser := SAX2Parser on: self addressBookXML.
	oldLexicalHandler := parser lexicalHandler.
	self
		assert: oldLexicalHandler class == self lexicalHandlerClass;
		assert: oldLexicalHandler parser == parser.

	newLexicalHandler := self lexicalHandlerClass new.
	self
		assert: (parser lexicalHandler: newLexicalHandler) == parser;
		assert: parser lexicalHandler == newLexicalHandler;
		assert: newLexicalHandler parser == parser;
		assert: (parser lexicalHandler: nil) == parser;
		assert: parser lexicalHandler class == self lexicalHandlerClass;
		assert: parser lexicalHandler parser == parser.