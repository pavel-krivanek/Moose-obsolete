accessing
entityCacheAtURI: anXMLURIOrURIString ifAbsentPut: aBlock
	^ self entityCache
		at: anXMLURIOrURIString asXMLURI
		ifAbsentPut: aBlock