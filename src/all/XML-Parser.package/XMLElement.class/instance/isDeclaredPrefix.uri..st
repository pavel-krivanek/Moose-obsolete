testing
isDeclaredPrefix: aPrefix uri: aURI
	"is the namespace prefix aPrefix mapped to aURI for the receiver and
	its descendants?"

	^ self usesNamespaces
		and: [
			self namespaceScope
				includesPrefix: aPrefix
				mappedTo: aURI]