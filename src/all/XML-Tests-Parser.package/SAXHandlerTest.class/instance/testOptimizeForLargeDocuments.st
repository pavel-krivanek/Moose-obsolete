tests
testOptimizeForLargeDocuments
	| parser |

	parser := SAXHandler on: ''.

	parser optimizeForLargeDocuments.
	self
		deny: parser isValidating;
		deny: parser usesNamespaces;
		assert: parser documentReadLimit isNil.