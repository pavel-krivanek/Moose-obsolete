tests
testMaxEntityReplacementDepth
	| parser |

	parser := SAXHandler on: ''.
	self assert:
		parser maxEntityReplacementDepth =
			XMLParserLimits defaultMaxEntityReplacementDepth.
	self
		assert: (parser maxEntityReplacementDepth: 20) == parser;
		assert: parser maxEntityReplacementDepth = 20;
		assert: (parser maxEntityReplacementDepth: nil) == parser;
		assert: parser maxEntityReplacementDepth isNil.