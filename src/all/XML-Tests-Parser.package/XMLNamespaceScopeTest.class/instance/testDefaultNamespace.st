tests
testDefaultNamespace
	| scope oldPrefixMappings |

	scope := self newNamespaceScope.
	self assert: scope defaultNamespace = ''.

	oldPrefixMappings := scope prefixMappings.
	scope defaultNamespace: 'test'.
	self
		assert: scope defaultNamespace = 'test';
		assert: (scope prefixMappings at: '') = 'test';
		deny: scope prefixMappings = oldPrefixMappings.

	scope unmapPrefix: ''.
	self assert: scope defaultNamespace = ''.