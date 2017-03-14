namespacing
declarePrefix: aPrefix uri: aURI
	self namespaceScope
		mapPrefix: aPrefix
		to: aURI