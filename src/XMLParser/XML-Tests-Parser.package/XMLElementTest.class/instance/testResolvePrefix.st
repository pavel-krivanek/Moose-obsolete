tests
testResolvePrefix
	| element |

	element := self newNode.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element resolvePrefix: prefix) = ''.
		element declarePrefix: prefix uri: uri.
		self assert: (element resolvePrefix: prefix) = uri].

	self assert:
		(element resolvePrefix: 'xml') = XMLNamespaceScope xmlNamespaceURI.

	self assert:
		(element resolvePrefix: 'xmlns') = XMLNamespaceScope xmlnsNamespaceURI.