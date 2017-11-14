resolving
streamResolveExternalEntityURI: anXMLURIOrURIString upToLimit: aMaxSize
	^ self resolveExternalEntityWith: [
		self externalEntityResolver
			streamResolveExternalEntityURI: anXMLURIOrURIString
			upToLimit: aMaxSize]