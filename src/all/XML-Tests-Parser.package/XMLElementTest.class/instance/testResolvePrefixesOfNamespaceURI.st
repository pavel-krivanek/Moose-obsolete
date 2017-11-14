tests
testResolvePrefixesOfNamespaceURI
	| element |

	element := self newNode.
	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert: (element resolvePrefixesOfNamespaceURI: uri) isEmpty.

		element
			declarePrefix: prefix
			uri: uri.
		self assert:
			(element resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix).

		element
			declarePrefix: 'newPrefix'
			uri: uri.
		self assert:
			(element resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix with: 'newPrefix')].

	self assert:
		(element resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlNamespaceURI) =
				(Set with: 'xml').
	self assert:
		(element resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlnsNamespaceURI) =
				(Set with: 'xmlns').

	(element := self newNode) usesNamespaces: false.
	self assert:
		(element resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlNamespaceURI) isEmpty.
	self assert:
		(element resolvePrefixesOfNamespaceURI:
			XMLNamespaceScope xmlnsNamespaceURI) isEmpty.
	self deny: element usesNamespaces.