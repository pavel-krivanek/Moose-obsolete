tests
testIncludesPrefixMappedTo
	| scope |

	scope := self newNamespaceScope.
	self
		deny: (scope includesPrefix: 'xml' mappedTo: XMLNamespaceScope xmlNamespaceURI);
		deny: (scope includesPrefix: 'xmlns' mappedTo: XMLNamespaceScope xmlnsNamespaceURI).

	"cannot map xmlns prefix, but can map xml"
	scope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert: (scope includesPrefix: 'xml' mappedTo: XMLNamespaceScope xmlNamespaceURI).

	self namespaces keysAndValuesDo: [:prefix :uri |
		self deny: (scope includesPrefix: prefix mappedTo: uri).
		scope mapPrefix: prefix to: uri.
		self assert: (scope includesPrefix: prefix mappedTo: uri)].