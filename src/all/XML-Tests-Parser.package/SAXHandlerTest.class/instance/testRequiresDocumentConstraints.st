tests
testRequiresDocumentConstraints
	| parser |

	(parser := SAXHandler on: '') isValidating: false.
	self deny: parser requiresDocumentConstraints.

	"enabling should force validation"
	self
		assert: (parser requiresDocumentConstraints: true) == parser;
		assert: parser requiresDocumentConstraints;
		assert: parser isValidating.

	self
		assert: (parser isValidating: false) == parser;
		deny: parser isValidating;
		deny: parser requiresDocumentConstraints.