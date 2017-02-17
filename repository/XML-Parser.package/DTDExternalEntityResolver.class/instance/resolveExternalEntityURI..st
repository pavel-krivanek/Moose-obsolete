resolving
resolveExternalEntityURI: anXMLURIOrURIString
	^ self resolveExternalEntityWith: [:maxSize |
		anXMLURIOrURIString asXMLURI
			getUpToLimit: maxSize
			decoding: false]