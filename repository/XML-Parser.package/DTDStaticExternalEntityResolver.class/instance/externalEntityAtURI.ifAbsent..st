accessing
externalEntityAtURI: anXMLURIOrURIString ifAbsent: aBlock
	^ self externalEntities
		at: anXMLURIOrURIString asXMLURI
		ifAbsent: aBlock