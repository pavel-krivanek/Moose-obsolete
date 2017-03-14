testing
isDeclaredPrefix: aPrefix uri: aURI
	^ self namespaceScope
		includesPrefix: aPrefix
		mappedTo: aURI