tests
testUnmapPrefixes
	| scope oldPrefixMappings |

	scope := self newNamespaceScopeWithNamespaces.
	oldPrefixMappings := scope prefixMappings.
	self
		assert: scope unmapPrefixes == scope;
		deny: scope hasNamespaces.

	"ensure prefixMappings is copied when removing"
	self
		assert: oldPrefixMappings = self namespaces;
		deny: scope prefixMappings = oldPrefixMappings;
		deny: scope prefixMappings == oldPrefixMappings.