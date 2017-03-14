accessing
externalEntityAtURI: anXMLURIOrURIString put: aReplacement
	^ self externalEntities
		at: anXMLURIOrURIString asXMLURI
		put: aReplacement