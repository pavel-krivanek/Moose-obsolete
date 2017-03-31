tests
testCopy
	| scope oldPrefixMappings copy |

	scope := self newNamespaceScopeWithNamespaces.
	oldPrefixMappings := scope prefixMappings.
	copy := scope copy.
	self
		deny: copy == scope;
		assert: copy = scope;
		assert: copy prefixMappings == oldPrefixMappings.