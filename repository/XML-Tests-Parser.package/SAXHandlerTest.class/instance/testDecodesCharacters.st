tests
testDecodesCharacters
	| parser |

	parser := SAXHandler on: self prefixedXMLSource.
	self
		assert: parser decodesCharacters;
		assert: (parser decodesCharacters: false) == parser;
		deny: parser decodesCharacters;
		assert: (parser decodesCharacters: true) == parser;
		assert: parser decodesCharacters.