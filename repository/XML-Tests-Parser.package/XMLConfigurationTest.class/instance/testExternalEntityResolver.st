tests
testExternalEntityResolver
	| configuration oldResolver newResolver |

	configuration := self newConfiguration.
	oldResolver := configuration externalEntityResolver.
	self assert: oldResolver class == self externalEntityResolverClass.

	newResolver := self externalEntityResolverClass new.
	self
		assert: (configuration externalEntityResolver: newResolver) == configuration;
		assert: configuration externalEntityResolver == newResolver.