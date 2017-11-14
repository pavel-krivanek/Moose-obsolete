namespacing
resolvePrefixesOfNamespaceURI: aURI
	"returns a set of all the namespace prefixes of aURI"
	^ self usesNamespaces
		ifTrue: [self namespaceScope resolvePrefixesOfNamespaceURI: aURI]
		ifFalse: [Set new]