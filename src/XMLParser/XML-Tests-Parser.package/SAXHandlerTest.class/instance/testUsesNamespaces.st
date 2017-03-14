tests
testUsesNamespaces
	| parser |

	parser := SAXHandler on: self prefixedXMLSource.
	self
		assert: parser usesNamespaces;
		assert: (parser usesNamespaces: false) == parser;
		deny: parser usesNamespaces;
		assert: (parser usesNamespaces: true) == parser;
		assert: parser usesNamespaces.