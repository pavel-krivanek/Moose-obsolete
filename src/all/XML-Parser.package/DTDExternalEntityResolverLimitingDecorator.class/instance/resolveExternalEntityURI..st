resolving
resolveExternalEntityURI: anXMLURIOrURIString
	^ self resolveExternalEntityWith: [
		self externalEntityResolver resolveExternalEntityURI:
			anXMLURIOrURIString]