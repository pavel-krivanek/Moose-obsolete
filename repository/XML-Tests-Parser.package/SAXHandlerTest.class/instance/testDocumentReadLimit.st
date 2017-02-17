tests
testDocumentReadLimit
	| parser |

	parser := SAXHandler on: self prefixedXMLSource.
	self
		assert: parser documentReadLimit = XMLParserLimits defaultDocumentReadLimit;
		assert: (parser documentReadLimit: 100000) == parser;
		assert: parser documentReadLimit = 100000;
		assert: (parser documentReadLimit: nil) == parser;
		assert: parser documentReadLimit isNil.