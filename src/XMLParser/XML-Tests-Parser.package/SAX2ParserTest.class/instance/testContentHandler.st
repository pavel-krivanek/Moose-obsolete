tests
testContentHandler
	| parser oldContentHandler newContentHandler |

	parser := SAX2Parser on: self addressBookXML.
	oldContentHandler := parser contentHandler.
	self
		assert: oldContentHandler class == self contentHandlerClass;
		assert: oldContentHandler parser == parser.

	newContentHandler := self contentHandlerClass new.
	self
		assert: (parser contentHandler: newContentHandler) == parser;
		assert: parser contentHandler == newContentHandler;
		assert: newContentHandler parser == parser;
		assert: (parser contentHandler: nil) == parser;
		assert: parser contentHandler class == self contentHandlerClass;
		assert: parser contentHandler parser == parser.