tests
testResolvePrefixesOfNamespaceURI
	| scope |

	scope := self newNamespaceScope.

	self namespaces keysAndValuesDo: [:prefix :uri |
		self assert:
			(scope resolvePrefixesOfNamespaceURI: uri) isEmpty.

		scope
			mapPrefix: prefix
			to: uri.
		self assert:
			(scope resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix).

		scope
			mapPrefix: 'newPrefix'
			to: uri.
		self assert:
			(scope resolvePrefixesOfNamespaceURI: uri) =
				(Set with: prefix with: 'newPrefix')].

	self assert:
		(scope resolvePrefixesOfNamespaceURI: scope xmlNamespaceURI) =
			(Set with: 'xml').
	self assert:
		(scope resolvePrefixesOfNamespaceURI: scope xmlnsNamespaceURI) =
			(Set with: 'xmlns').

	"cannot map xmlns prefix at all, but can map xml to the same URI"
	scope
		mapPrefix: 'xml'
		to: scope xmlNamespaceURI.
	self assert:
		(scope resolvePrefixesOfNamespaceURI: scope xmlNamespaceURI) =
			(Set with: 'xml').