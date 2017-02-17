accessing
entityCacheAtURI: anXMLURIOrURIString ifAbsent: aBlock
	^ self entityCache
		at: anXMLURIOrURIString asXMLURI
		ifAbsent: aBlock