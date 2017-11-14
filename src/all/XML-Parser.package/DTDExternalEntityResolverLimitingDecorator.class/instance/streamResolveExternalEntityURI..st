resolving
streamResolveExternalEntityURI: anXMLURIOrURIString
	^ self resolveExternalEntityWith: [
		self externalEntityResolver streamResolveExternalEntityURI:
			anXMLURIOrURIString]