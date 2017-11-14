resolving
resolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	^ self resolveExternalEntityWith: [
		self externalEntityResolver
			resolveExternalEntityURI: anXMLURIOrURIString
			upToLimit: aMaxSize]