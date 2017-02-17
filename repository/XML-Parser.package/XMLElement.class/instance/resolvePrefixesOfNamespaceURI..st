namespacing
resolvePrefixesOfNamespaceURI: aURI
	"returns a set of all the namespace prefixes of aURI"
	^ self namespaceScope resolvePrefixesOfNamespaceURI: aURI