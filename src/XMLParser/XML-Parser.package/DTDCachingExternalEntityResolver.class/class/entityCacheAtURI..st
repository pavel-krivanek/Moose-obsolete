accessing
entityCacheAtURI: anXMLURIOrURIString
	^ self entityCache
		at: anXMLURIOrURIString asXMLURI
		ifAbsent: [nil]