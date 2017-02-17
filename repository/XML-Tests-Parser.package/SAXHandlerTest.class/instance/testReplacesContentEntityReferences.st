tests
testReplacesContentEntityReferences
	| parser |

	parser := SAXHandler on: self prefixedXMLSource.
	self
		assert: parser replacesContentEntityReferences;
		assert: (parser replacesContentEntityReferences: false) == parser;
		deny: parser replacesContentEntityReferences;
		assert: (parser replacesContentEntityReferences: true) == parser;
		assert: parser replacesContentEntityReferences.