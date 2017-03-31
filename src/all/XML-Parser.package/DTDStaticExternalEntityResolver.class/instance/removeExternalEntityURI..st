removing
removeExternalEntityURI: anXMLURIOrURIString
	^ self externalEntities removeKey: anXMLURIOrURIString asXMLURI