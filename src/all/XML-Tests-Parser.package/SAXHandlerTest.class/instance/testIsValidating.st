tests
testIsValidating
	| parser |

	parser := SAXHandler on: self prefixedXMLSource.
	self
		assert: parser isValidating;
		assert: (parser isValidating: false) == parser;
		deny: parser isValidating;
		assert: (parser isValidating: true) == parser;
		assert: parser isValidating.