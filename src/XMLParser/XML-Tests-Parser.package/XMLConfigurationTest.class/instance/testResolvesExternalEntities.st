tests
testResolvesExternalEntities
	| configuration |

	configuration := self newConfiguration.
	"should not resolve external entities by default for security"
	self
		deny: configuration resolvesExternalEntities;
		assert: (configuration resolvesExternalEntities: true) == configuration;
		assert: configuration resolvesExternalEntities;
		assert: (configuration resolvesExternalEntities: false) == configuration;
		deny: configuration resolvesExternalEntities.