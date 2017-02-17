accessing
externalEntityAtURI: anXMLURIOrURIString
	^ self
		externalEntityAtURI: anXMLURIOrURIString asXMLURI
		ifAbsent: ['']