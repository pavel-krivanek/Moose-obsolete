tests
testDeclaredPrefixes
	| element prefixes |

	element := self newNode.
	prefixes := OrderedCollection new.
	self namespaces keysAndValuesDo: [:prefix :uri |
		element
			declarePrefix: prefix
			uri: uri.
		prefixes addLast: prefix.
		self assert: element declaredPrefixes = prefixes asArray].

	(element := self newNode) usesNamespaces: false.
	self
		assert: element declaredPrefixes isEmpty;
		deny: element usesNamespaces.