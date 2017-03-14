tests
testIncludesPrefix
	| scope |

	scope := self newNamespaceScope.
	self
		deny: (scope includesPrefix: 'xml');
		deny: (scope includesPrefix: 'xmlns').

	"cannot map xmlns prefix, but can map xml"
	scope mapPrefix: 'xml' to: XMLNamespaceScope xmlNamespaceURI.
	self assert: (scope includesPrefix: 'xml').

	self namespaces keysAndValuesDo: [:prefix :uri |
		self deny: (scope includesPrefix: prefix).
		scope mapPrefix: prefix to: uri.
		self assert: (scope includesPrefix: prefix)].