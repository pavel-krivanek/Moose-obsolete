accessing
entityCacheAtURI: anXMLURIOrURIString put: aStringOrByteArray
	^ self entityCache
		at: anXMLURIOrURIString asXMLURI
		put: aStringOrByteArray