tests
testPreservesUndeclaredEntityReferences
	| parser |

	parser := SAXHandler on: ''.
	self deny: parser preservesUndeclaredEntityReferences.

	"enabling should disable validation"
	self
		assert: (parser preservesUndeclaredEntityReferences: true) == parser;
		assert: parser preservesUndeclaredEntityReferences;
		deny: parser isValidating.

	self
		assert: (parser isValidating: true) == parser;
		assert: parser isValidating;
		deny: parser preservesUndeclaredEntityReferences.