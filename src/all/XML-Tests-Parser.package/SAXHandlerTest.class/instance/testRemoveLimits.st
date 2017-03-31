tests
testRemoveLimits
	| parser readLimit depthLimit |

	readLimit := 100.
	depthLimit := 5.
	(parser := SAXHandler on: '')
		documentReadLimit: readLimit;
		maxEntityReplacementDepth: depthLimit.
	self
		assert: parser documentReadLimit = readLimit;
		assert: parser maxEntityReplacementDepth = depthLimit.

	self
		assert: parser removeLimits == parser;
		assert: parser documentReadLimit isNil;
		assert: parser maxEntityReplacementDepth isNil.