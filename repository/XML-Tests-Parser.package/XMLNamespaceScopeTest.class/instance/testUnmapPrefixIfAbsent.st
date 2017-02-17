tests
testUnmapPrefixIfAbsent
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |  | oldPrefixMappings |
		self assert:
			(scope
				unmapPrefix: prefix
				ifAbsent: [#absent]) = #absent.
		self deny: (scope includesPrefix: prefix).
		scope
			mapPrefix: prefix
			to: uri.

		oldPrefixMappings := scope prefixMappings.
		self assert:
			(scope
				unmapPrefix: prefix
				ifAbsent: [self fail]) = uri.
		self deny: (scope includesPrefix: prefix).

		"ensure prefixMappings is copied when removing"
		self
			assert: (oldPrefixMappings includesKey: prefix);
			deny: scope prefixMappings = oldPrefixMappings;
			deny: scope prefixMappings == oldPrefixMappings.

		self
			assert:
				(scope
					unmapPrefix: prefix
					ifAbsent: [#absent]) = #absent].
	self assert: scope prefixMappings isEmpty.