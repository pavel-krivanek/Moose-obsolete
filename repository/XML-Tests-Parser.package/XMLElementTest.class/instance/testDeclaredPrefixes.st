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