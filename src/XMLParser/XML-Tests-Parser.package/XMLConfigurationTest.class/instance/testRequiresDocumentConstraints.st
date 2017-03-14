tests
testRequiresDocumentConstraints
	| configuration |

	(configuration := self newConfiguration) isValidating: false.
	self deny: configuration requiresDocumentConstraints.

	"enabling should force validation"
	self
		assert: (configuration requiresDocumentConstraints: true) == configuration;
		assert: configuration requiresDocumentConstraints;
		assert: configuration isValidating.

	self
		assert: (configuration isValidating: false) == configuration;
		deny: configuration isValidating;
		deny: configuration requiresDocumentConstraints.