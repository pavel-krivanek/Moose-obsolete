tests
testPreservesIgnorableWhitespace
	| configuration |

	configuration := self newConfiguration.
	configuration isValidating: false.
	"should enable validation"
	self
		deny: configuration preservesIgnorableWhitespace;
		assert: (configuration preservesIgnorableWhitespace: true) == configuration;
		assert: configuration preservesIgnorableWhitespace;
		assert: configuration isValidating.

	"disabling validation should disable it"
	self
		assert: (configuration isValidating: false) == configuration;
		deny: configuration preservesIgnorableWhitespace;
		deny: configuration isValidating