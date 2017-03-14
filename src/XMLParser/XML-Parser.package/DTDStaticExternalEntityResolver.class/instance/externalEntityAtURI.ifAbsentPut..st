accessing
externalEntityAtURI: anXMLURIOrURIString ifAbsentPut: aBlock
	^ self externalEntities
		at: anXMLURIOrURIString asXMLURI
		ifAbsentPut: aBlock