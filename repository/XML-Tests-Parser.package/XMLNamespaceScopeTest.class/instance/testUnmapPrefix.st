tests
testUnmapPrefix
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |  | oldPrefixMappings |
		self
			should: [scope unmapPrefix: prefix]
			raise: XMLNamespaceException.
		self deny: (scope includesPrefix: prefix).
		scope
			mapPrefix: prefix
			to: uri.
	
		oldPrefixMappings := scope prefixMappings.
		self
			assert: (scope unmapPrefix: prefix) = uri;
			deny: (scope includesPrefix: prefix).

		"ensure prefixMappings is copied when removing"
		self
			assert: (oldPrefixMappings includesKey: prefix);
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings.

		self
			should: [scope unmapPrefix: prefix]
			raise: XMLNamespaceException].
	self assert: scope prefixMappings isEmpty.