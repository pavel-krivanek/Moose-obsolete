tests
testUsesNamespaces
	| configuration |

	configuration := self newConfiguration.
	self
		assert: configuration usesNamespaces;
		assert: (configuration usesNamespaces: false) == configuration;
		deny: configuration usesNamespaces;
		assert: (configuration usesNamespaces: true) == configuration;
		assert: configuration usesNamespaces.