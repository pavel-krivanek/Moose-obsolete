removing
removeExternalEntityURI: anXMLURIOrURIString ifAbsent: aBlock
	^ self externalEntities
		removeKey: anXMLURIOrURIString asXMLURI
		ifAbsent: aBlock