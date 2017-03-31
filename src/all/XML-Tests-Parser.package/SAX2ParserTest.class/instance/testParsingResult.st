tests
testParsingResult
	| parser |

	parser := SAX2Parser on: self addressBookXML.
	self assert: parser parsingResult == parser.

	parser parsingResult: #result.
	self
		assert: parser parsingResult == #result;
		assert: parser parseDocument == #result.