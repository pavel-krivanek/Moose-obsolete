tests
testResolvePrefix
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (scope resolvePrefix: prefix) = ''.
		scope mapPrefix: prefix to: uri.
		self assert: (scope resolvePrefix: prefix) = uri].

	self assert:
		(scope resolvePrefix: 'xml') = scope xmlNamespaceURI.

	self assert:
		(scope resolvePrefix: 'xmlns') = scope xmlnsNamespaceURI.