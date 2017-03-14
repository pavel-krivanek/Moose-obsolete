tests
testPreservesUndeclaredEntityReferences
	| configuration |

	configuration := self newConfiguration.
	self deny: configuration preservesUndeclaredEntityReferences.

	"enabling should disable validation"
	self assert:
		(configuration preservesUndeclaredEntityReferences: true) ==
			configuration.
	self
		assert: configuration preservesUndeclaredEntityReferences;
		deny: configuration isValidating.

	self
		assert: (configuration isValidating: true) == configuration;
		assert: configuration isValidating;
		deny: configuration preservesUndeclaredEntityReferences.