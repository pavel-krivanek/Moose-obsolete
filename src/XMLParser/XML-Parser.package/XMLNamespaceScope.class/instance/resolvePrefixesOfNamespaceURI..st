resolving
resolvePrefixesOfNamespaceURI: aURI
	| prefixes |

	"the xml and xmlns namespaces URIs can't be aliased"
	aURI = self xmlNamespaceURI
		ifTrue: [^ Set with: 'xml'].
	aURI = self xmlnsNamespaceURI
		ifTrue: [^ Set with: 'xmlns'].

	prefixes := Set new.
	self prefixesAndURIsDo: [:prefix :uri |
		uri = aURI
			ifTrue: [prefixes add: prefix]].
	^ prefixes.