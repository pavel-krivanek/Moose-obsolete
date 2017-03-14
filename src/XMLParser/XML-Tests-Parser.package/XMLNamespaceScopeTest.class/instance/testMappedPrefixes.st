tests
testMappedPrefixes
	| scope prefixes |

	scope := self newNamespaceScope.
	prefixes := OrderedCollection new.
	self namespaces keysAndValuesDo: [:prefix :uri |
		scope
			mapPrefix: prefix
			to: uri.
		prefixes addLast: prefix.
		self assert: scope mappedPrefixes = prefixes asArray].